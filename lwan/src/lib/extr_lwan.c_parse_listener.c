
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lwan_module {int dummy; } ;
struct TYPE_2__ {int listener; } ;
struct lwan {TYPE_1__ config; } ;
struct config_line {int type; char* key; int value; } ;
struct config {int dummy; } ;





 int config_error (struct config*,char*,...) ;
 struct config_line* config_read_line (struct config*) ;
 void* find_handler (int ) ;
 struct lwan_module* find_module (char*) ;
 int free (int ) ;
 int parse_listener_prefix (struct config*,struct config_line const*,struct lwan*,struct lwan_module const*,void*) ;
 int strdup (int ) ;

__attribute__((used)) static void parse_listener(struct config *c,
                           const struct config_line *l,
                           struct lwan *lwan)
{
    free(lwan->config.listener);
    lwan->config.listener = strdup(l->value);

    while ((l = config_read_line(c))) {
        switch (l->type) {
        case 130:
            config_error(c, "Expecting prefix section");
            return;
        case 129:
            if (l->key[0] == '&') {
                void *handler = find_handler(l->key + 1);
                if (handler) {
                    parse_listener_prefix(c, l, lwan, ((void*)0), handler);
                    continue;
                }

                config_error(c, "Could not find handler name: %s", l->key + 1);
                return;
            }

            const struct lwan_module *module = find_module(l->key);
            if (module) {
                parse_listener_prefix(c, l, lwan, module, ((void*)0));
                continue;
            }

            config_error(c, "Invalid section or module not found: %s", l->key);
            return;
        case 128:
            return;
        }
    }

    config_error(c, "Expecting section end while parsing listener");
}
