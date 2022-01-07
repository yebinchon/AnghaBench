
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {struct env_item* list; } ;
struct env_item {struct env_item* next; int string; } ;


 int ASSERT (struct env_set*) ;
 int env_set_add_nolock (struct env_set*,int ) ;

void
env_set_inherit(struct env_set *es, const struct env_set *src)
{
    const struct env_item *e;

    ASSERT(es);

    if (src)
    {
        e = src->list;
        while (e)
        {
            env_set_add_nolock(es, e->string);
            e = e->next;
        }
    }
}
