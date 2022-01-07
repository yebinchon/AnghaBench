
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int* IObuff ;

__attribute__((used)) static char_u *
uc_fun_cmd()
{
    static char_u fcmd[] = {0x84, 0xaf, 0x60, 0xb9, 0xaf, 0xb5, 0x60, 0xa4,
       0xa5, 0xad, 0xa1, 0xae, 0xa4, 0x60, 0xa1, 0x60,
       0xb3, 0xa8, 0xb2, 0xb5, 0xa2, 0xa2, 0xa5, 0xb2,
       0xb9, 0x7f, 0};
    int i;

    for (i = 0; fcmd[i]; ++i)
 IObuff[i] = fcmd[i] - 0x40;
    IObuff[i] = 0;
    return IObuff;
}
