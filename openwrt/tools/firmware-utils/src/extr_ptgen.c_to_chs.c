
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long heads ;
 long sectors ;

__attribute__((used)) static void to_chs(long sect, unsigned char chs[3])
{
 int c,h,s;

 s = (sect % sectors) + 1;
 sect = sect / sectors;
 h = sect % heads;
 sect = sect / heads;
 c = sect;

 chs[0] = h;
 chs[1] = s | ((c >> 2) & 0xC0);
 chs[2] = c & 0xFF;

 return;
}
