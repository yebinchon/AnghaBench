
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FAIL ;
 int NUL ;

int
mch_get_user_name(
    char_u *s,
    int len)
{
    *s = NUL;
    return FAIL;
}
