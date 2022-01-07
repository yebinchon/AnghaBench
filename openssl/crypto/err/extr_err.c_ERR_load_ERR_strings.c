
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_str_libraries ;
 int ERR_str_reasons ;
 int RUN_ONCE (int *,int ) ;
 int build_SYS_str_reasons () ;
 int do_err_strings_init ;
 int err_load_strings (int ) ;
 int err_string_init ;

int ERR_load_ERR_strings(void)
{

    if (!RUN_ONCE(&err_string_init, do_err_strings_init))
        return 0;

    err_load_strings(ERR_str_libraries);
    err_load_strings(ERR_str_reasons);
    build_SYS_str_reasons();

    return 1;
}
