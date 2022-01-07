
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int vim_strncpy (int *,char*,int) ;

void
mch_get_host_name(
    char_u *s,
    int len)
{



    vim_strncpy(s, "PC (16 bits Vim)", len - 1);

}
