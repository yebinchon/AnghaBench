
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const env_set ;


 int ASSERT (char const*) ;
 int env_set_add_nolock (char const*,char const*) ;

void
env_set_add(struct env_set *es, const char *str)
{
    ASSERT(es);
    ASSERT(str);
    env_set_add_nolock(es, str);
}
