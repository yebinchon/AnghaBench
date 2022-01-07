
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {int * gc; int list; } ;


 int add_env_item (char*,int,int *,int *) ;
 int remove_env_item (char const*,int ,int *) ;

__attribute__((used)) static void
env_set_add_nolock(struct env_set *es, const char *str)
{
    remove_env_item(str, es->gc == ((void*)0), &es->list);
    add_env_item((char *)str, 1, &es->list, es->gc);
}
