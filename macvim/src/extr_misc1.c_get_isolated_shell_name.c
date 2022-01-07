
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ char_u ;


 scalar_t__ NUL ;
 scalar_t__* gettail (scalar_t__*) ;
 int mb_ptr_adv (scalar_t__*) ;
 scalar_t__* p_sh ;
 scalar_t__* skiptowhite (scalar_t__*) ;
 scalar_t__ vim_ispathsep (scalar_t__) ;
 scalar_t__* vim_strnsave (scalar_t__*,int) ;
 scalar_t__* vim_strsave (scalar_t__*) ;

char_u *
get_isolated_shell_name()
{
    char_u *p;





    p = skiptowhite(p_sh);
    if (*p == NUL)
    {

 p = vim_strsave(gettail(p_sh));
    }
    else
    {
 char_u *p1, *p2;


 p1 = p_sh;
 for (p2 = p_sh; p2 < p; mb_ptr_adv(p2))
     if (vim_ispathsep(*p2))
  p1 = p2 + 1;
 p = vim_strnsave(p1, (int)(p - p1));
    }

    return p;
}
