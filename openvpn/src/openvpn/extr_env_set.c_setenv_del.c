
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {int dummy; } ;


 int ASSERT (char const*) ;
 int setenv_str (struct env_set*,char const*,int *) ;

void
setenv_del(struct env_set *es, const char *name)
{
    ASSERT(name);
    setenv_str(es, name, ((void*)0));
}
