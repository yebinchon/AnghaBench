
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 char NUL ;

int
mch_isFullName(char_u *fname)
{

    return (fname[0] != NUL && fname[1] == ':'
         && (fname[2] == '/' || fname[2] == '\\'))
 || (fname[0] == fname[1] && (fname[0] == '/' || fname[0] == '\\'));
}
