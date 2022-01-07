
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LC_TIME ;
 int VV_CTYPE ;
 int VV_LANG ;
 int VV_LC_TIME ;
 scalar_t__ get_locale_val (int ) ;
 int * get_mess_env () ;
 int set_vim_var_string (int ,int *,int) ;

void
set_lang_var()
{
    char_u *loc;





    loc = (char_u *)"C";

    set_vim_var_string(VV_CTYPE, loc, -1);






    loc = get_mess_env();

    set_vim_var_string(VV_LANG, loc, -1);




    set_vim_var_string(VV_LC_TIME, loc, -1);
}
