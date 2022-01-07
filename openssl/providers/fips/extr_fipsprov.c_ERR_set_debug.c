
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c_set_error_debug (int *,char const*,int,char const*) ;

void ERR_set_debug(const char *file, int line, const char *func)
{
    c_set_error_debug(((void*)0), file, line, func);
}
