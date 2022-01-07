
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_USAGE ;
 int msg (int ,char*,char const*) ;

void
notnull(const char *arg, const char *description)
{
    if (!arg)
    {
        msg(M_USAGE, "You must define %s", description);
    }
}
