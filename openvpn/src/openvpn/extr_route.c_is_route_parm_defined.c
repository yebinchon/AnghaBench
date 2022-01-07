
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool
is_route_parm_defined(const char *parm)
{
    if (!parm)
    {
        return 0;
    }
    if (!strcmp(parm, "default"))
    {
        return 0;
    }
    return 1;
}
