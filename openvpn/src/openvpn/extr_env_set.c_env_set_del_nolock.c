
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {int list; int * gc; } ;


 int remove_env_item (char const*,int ,int *) ;

__attribute__((used)) static bool
env_set_del_nolock(struct env_set *es, const char *str)
{
    return remove_env_item(str, es->gc == ((void*)0), &es->list);
}
