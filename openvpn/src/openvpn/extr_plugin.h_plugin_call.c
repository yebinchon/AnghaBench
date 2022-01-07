
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plugin_return {int dummy; } ;
struct plugin_list {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;


 int plugin_call_ssl (struct plugin_list const*,int const,struct argv const*,struct plugin_return*,struct env_set*,int,int *) ;

__attribute__((used)) static inline int
plugin_call(const struct plugin_list *pl,
            const int type,
            const struct argv *av,
            struct plugin_return *pr,
            struct env_set *es)
{
    return plugin_call_ssl(pl, type, av, pr, es, -1, ((void*)0));
}
