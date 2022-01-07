
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ char_u ;


 scalar_t__ ESC ;
 scalar_t__ NUL ;
 scalar_t__ STRLEN (scalar_t__*) ;
 int * last_insert ;
 int last_insert_skip ;
 scalar_t__* vim_strsave (int *) ;

char_u *
get_last_insert_save()
{
    char_u *s;
    int len;

    if (last_insert == ((void*)0))
 return ((void*)0);
    s = vim_strsave(last_insert + last_insert_skip);
    if (s != ((void*)0))
    {
 len = (int)STRLEN(s);
 if (len > 0 && s[len - 1] == ESC)
     s[len - 1] = NUL;
    }
    return s;
}
