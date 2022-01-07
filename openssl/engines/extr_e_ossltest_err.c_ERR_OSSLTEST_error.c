
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERR_get_next_error_library () ;
 int ERR_raise (scalar_t__,int) ;
 int ERR_set_debug (char*,int,int *) ;
 scalar_t__ lib_code ;

__attribute__((used)) static void ERR_OSSLTEST_error(int function, int reason, char *file, int line)
{
    if (lib_code == 0)
        lib_code = ERR_get_next_error_library();
    ERR_raise(lib_code, reason);
    ERR_set_debug(file, line, ((void*)0));
}
