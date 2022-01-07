
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {struct env_set* string; struct env_set* next; struct env_set* list; int * gc; } ;
struct env_item {struct env_item* string; struct env_item* next; struct env_item* list; int * gc; } ;


 int free (struct env_set*) ;

void
env_set_destroy(struct env_set *es)
{
    if (es && es->gc == ((void*)0))
    {
        struct env_item *e = es->list;
        while (e)
        {
            struct env_item *next = e->next;
            free(e->string);
            free(e);
            e = next;
        }
        free(es);
    }
}
