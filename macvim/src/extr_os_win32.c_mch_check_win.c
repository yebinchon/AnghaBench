
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL ;
 int OK ;
 int get_exe_name () ;
 scalar_t__ isatty (int) ;

int
mch_check_win(
    int argc,
    char **argv)
{
    get_exe_name();




    if (isatty(1))
 return OK;
    return FAIL;

}
