
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;



__attribute__((used)) static ut32 getthzeroimmed16(ut32 number) {
 ut32 res = 0;
 res |= (number & 0xf000) << 12;
 res |= (number & 0x0800) << 7;
 res |= (number & 0x0700) >> 4;
 res |= (number & 0x00ff) << 8;
 return res;
}
