
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FAIL ;
 int FALSE ;
 char* FullName_save (int *,int ) ;
 char NUL ;
 int OK ;
 char* exe_name ;
 scalar_t__ isatty (int) ;
 char* searchpath (char*) ;

int
mch_check_win(
    int argc,
    char **argv)
{

    if (*argv[0] != NUL)
 exe_name = FullName_save((char_u *)argv[0], FALSE);





    if (exe_name == ((void*)0) || *exe_name == NUL)
 exe_name = searchpath("vim.exe");

    if (isatty(1))
 return OK;
    return FAIL;
}
