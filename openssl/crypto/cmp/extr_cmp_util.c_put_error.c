
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_new () ;
 int ERR_set_debug (char const*,int,char const*) ;
 int ERR_set_error (int,int,int *) ;

__attribute__((used)) static void put_error(int lib, const char *func, int reason,
                      const char *file, int line)
{
    ERR_new();
    ERR_set_debug(file, line, func);
    ERR_set_error(lib, reason, ((void*)0) );
}
