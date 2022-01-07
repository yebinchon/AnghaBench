
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ remote_random; struct connection_list* connection_list; } ;
struct context {TYPE_1__ options; } ;
struct connection_list {int current; int len; struct connection_entry** array; } ;
struct connection_entry {int dummy; } ;


 int get_random () ;

__attribute__((used)) static void
init_connection_list(struct context *c)
{
    struct connection_list *l = c->options.connection_list;

    l->current = -1;
    if (c->options.remote_random)
    {
        int i;
        for (i = 0; i < l->len; ++i)
        {
            const int j = get_random() % l->len;
            if (i != j)
            {
                struct connection_entry *tmp;
                tmp = l->array[i];
                l->array[i] = l->array[j];
                l->array[j] = tmp;
            }
        }
    }
}
