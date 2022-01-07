
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* password_file; void* realm; } ;
struct lwan_url_map {TYPE_1__ authorization; int flags; } ;
struct config_line {char* value; int type; char* key; } ;
struct config {int dummy; } ;





 int HANDLER_MUST_AUTHORIZE ;
 int config_error (struct config*,char*,...) ;
 struct config_line* config_read_line (struct config*) ;
 int free (void*) ;
 int memset (TYPE_1__*,int ,int) ;
 void* strdup (char*) ;
 scalar_t__ streq (char*,char*) ;

__attribute__((used)) static void parse_listener_prefix_authorization(struct config *c,
                                                const struct config_line *l,
                                                struct lwan_url_map *url_map)
{
    if (!streq(l->value, "basic")) {
        config_error(c, "Only basic authorization supported");
        return;
    }

    memset(&url_map->authorization, 0, sizeof(url_map->authorization));

    while ((l = config_read_line(c))) {
        switch (l->type) {
        case 130:
            if (streq(l->key, "realm")) {
                free(url_map->authorization.realm);
                url_map->authorization.realm = strdup(l->value);
            } else if (streq(l->key, "password_file")) {
                free(url_map->authorization.password_file);
                url_map->authorization.password_file = strdup(l->value);
            }
            break;

        case 129:
            config_error(c, "Unexpected section: %s", l->key);
            goto error;

        case 128:
            if (!url_map->authorization.realm)
                url_map->authorization.realm = strdup("Lwan");
            if (!url_map->authorization.password_file)
                url_map->authorization.password_file = strdup("htpasswd");

            url_map->flags |= HANDLER_MUST_AUTHORIZE;
            return;
        }
    }

    config_error(c, "Could not find end of authorization section");

error:
    free(url_map->authorization.realm);
    free(url_map->authorization.password_file);
}
