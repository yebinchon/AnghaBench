
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 int mb_ptr_adv (char*) ;
 char psepc ;
 char psepcN ;

void
slash_adjust(char_u *p)
{
    while (*p)
    {
 if (*p == psepcN)
     *p = psepc;
 mb_ptr_adv(p);
    }
}
