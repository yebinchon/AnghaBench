
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int opt_isdir (char const*) ;

int app_isdir(const char *name)
{
    return opt_isdir(name);
}
