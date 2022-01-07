
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int idxtojis1 (int) ;
 int idxtojis2 (int) ;
 int sjistoidx (int,int) ;

__attribute__((used)) static int
cp932ext3_cp932ext2_jis(int c)
{
 int idx;

 idx = sjistoidx(0xfa, 0x40) + c;
 if (idx >= sjistoidx(0xfa, 0x5c))
  idx -= sjistoidx(0xfa, 0x5c) - sjistoidx(0xed, 0x40);
 else if (idx >= sjistoidx(0xfa, 0x55))
  idx -= sjistoidx(0xfa, 0x55) - sjistoidx(0xee, 0xfa);
 else if (idx >= sjistoidx(0xfa, 0x40))
  idx -= sjistoidx(0xfa, 0x40) - sjistoidx(0xee, 0xef);
 return idxtojis1(idx) << 8 | idxtojis2(idx);
}
