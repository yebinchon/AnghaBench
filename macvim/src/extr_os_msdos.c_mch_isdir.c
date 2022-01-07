
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FALSE ;
 int FA_DIREC ;
 int TRUE ;
 int vim_chmod (int *) ;

int
mch_isdir(char_u *name)
{
    int f;

    f = vim_chmod(name);
    if (f == -1)
 return FALSE;
    if ((f & FA_DIREC) == 0)
 return FALSE;
    return TRUE;
}
