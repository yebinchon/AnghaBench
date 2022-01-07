
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_url_map {int flags; struct lwan_module const* module; void* handler; struct hash* data; } ;
struct lwan_module {int flags; void* handle_request; struct hash* (* create_from_hash ) (char*,struct hash*) ;int (* parse_conf ) (struct hash*,struct config*) ;} ;
struct lwan {int url_map_trie; } ;
struct hash {int dummy; } ;
struct config_line {int type; int key; int value; } ;
struct config {int dummy; } ;





 int HANDLER_DATA_IS_HASH_TABLE ;
 int HANDLER_PARSE_MASK ;
 scalar_t__ UNLIKELY (int) ;
 int add_url_map (int *,char*,struct lwan_url_map*) ;
 int assert (int) ;
 int config_close (struct config*) ;
 int config_error (struct config*,char*,...) ;
 struct config* config_isolate_section (struct config*,struct config_line const*) ;
 char* config_last_error (struct config*) ;
 struct config_line* config_read_line (struct config*) ;
 int config_skip_section (struct config*,struct config_line const*) ;
 int free ;
 int hash_add (struct hash*,int ,int ) ;
 int hash_free (struct hash*) ;
 struct hash* hash_str_new (int ,int ) ;
 int parse_listener_prefix_authorization (struct config*,struct config_line const*,struct lwan_url_map*) ;
 int strdup (int ) ;
 char* strdupa (int ) ;
 int streq (int ,char*) ;
 struct hash* stub1 (char*,struct hash*) ;
 int stub2 (struct hash*,struct config*) ;

__attribute__((used)) static void parse_listener_prefix(struct config *c,
                                  const struct config_line *l,
                                  struct lwan *lwan,
                                  const struct lwan_module *module,
                                  void *handler)
{
    struct lwan_url_map url_map = {};
    struct hash *hash = hash_str_new(free, free);
    char *prefix = strdupa(l->value);
    struct config *isolated;

    isolated = config_isolate_section(c, l);
    if (!isolated) {
        config_error(c, "Could not isolate configuration file");
        goto out;
    }

    while ((l = config_read_line(c))) {
        switch (l->type) {
        case 130:
            hash_add(hash, strdup(l->key), strdup(l->value));
            break;

        case 129:
            if (streq(l->key, "authorization")) {
                parse_listener_prefix_authorization(c, l, &url_map);
            } else if (!config_skip_section(c, l)) {
                config_error(c, "Could not skip section");
                goto out;
            }
            break;

        case 128:
            goto add_map;
        }
    }

    config_error(c, "Expecting section end while parsing prefix");
    goto out;

add_map:
    assert((handler && !module) || (!handler && module));

    if (handler) {
        url_map.handler = handler;
        url_map.flags |= HANDLER_PARSE_MASK | HANDLER_DATA_IS_HASH_TABLE;
        url_map.data = hash;
        url_map.module = ((void*)0);

        hash = ((void*)0);
    } else if (module->create_from_hash && module->handle_request) {
        url_map.data = module->create_from_hash(prefix, hash);
        if (!url_map.data) {
            config_error(c, "Could not create module instance");
            goto out;
        }

        if (module->parse_conf && !module->parse_conf(url_map.data, isolated)) {
            const char *msg = config_last_error(isolated);

            config_error(c, "Error from module: %s", msg ? msg : "Unknown");
            goto out;
        }

        url_map.handler = module->handle_request;
        url_map.flags |= module->flags;
        url_map.module = module;
    } else if (UNLIKELY(!module->create_from_hash)) {
        config_error(c, "Module isn't prepared to load settings from a file; "
                        "create_from_hash() method isn't present");
        goto out;
    } else if (UNLIKELY(!module->handle_request)) {
        config_error(c, "Module does not have handle_request() method");
        goto out;
    }

    add_url_map(&lwan->url_map_trie, prefix, &url_map);

out:
    hash_free(hash);
    config_close(isolated);
}
