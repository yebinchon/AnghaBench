
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {int dummy; } ;


 char const* lastsesion_statevalue ;
 scalar_t__ streq (char const*,char*) ;

void
setenv_str(struct env_set *es, const char *name, const char *value)
{
    if (streq(name, "session_state"))
    {
        lastsesion_statevalue = value;
    }
}
