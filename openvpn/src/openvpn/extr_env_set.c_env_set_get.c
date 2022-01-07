
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {struct env_item* list; } ;
struct env_item {char const* string; struct env_item* next; } ;


 int env_string_equal (char const*,char const*) ;

const char *
env_set_get(const struct env_set *es, const char *name)
{
    const struct env_item *item = es->list;
    while (item && !env_string_equal(item->string, name))
    {
        item = item->next;
    }
    return item ? item->string : ((void*)0);
}
