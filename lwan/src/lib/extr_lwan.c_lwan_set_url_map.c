
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lwan_url_map {int flags; TYPE_1__* module; int handler; int args; scalar_t__ prefix; int data; } ;
struct lwan {int url_map_trie; } ;
struct TYPE_2__ {int handle_request; int flags; int (* create ) (scalar_t__,int ) ;} ;


 int HANDLER_PARSE_MASK ;
 scalar_t__ UNLIKELY (int) ;
 struct lwan_url_map* add_url_map (int *,int *,struct lwan_url_map const*) ;
 int destroy_urlmap ;
 int lwan_status_critical_perror (char*) ;
 int lwan_trie_destroy (int *) ;
 int lwan_trie_init (int *,int ) ;
 int stub1 (scalar_t__,int ) ;

void lwan_set_url_map(struct lwan *l, const struct lwan_url_map *map)
{
    lwan_trie_destroy(&l->url_map_trie);
    if (UNLIKELY(!lwan_trie_init(&l->url_map_trie, destroy_urlmap)))
        lwan_status_critical_perror("Could not initialize trie");

    for (; map->prefix; map++) {
        struct lwan_url_map *copy = add_url_map(&l->url_map_trie, ((void*)0), map);

        if (copy->module && copy->module->create) {
            copy->data = copy->module->create (map->prefix, copy->args);
            copy->flags = copy->module->flags;
            copy->handler = copy->module->handle_request;
        } else {
            copy->flags = HANDLER_PARSE_MASK;
        }
    }
}
