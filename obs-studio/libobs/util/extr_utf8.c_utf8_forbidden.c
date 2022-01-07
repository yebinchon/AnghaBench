
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int utf8_forbidden(unsigned char octet)
{
 switch (octet) {
 case 0xc0:
 case 0xc1:
 case 0xf5:
 case 0xff:
  return -1;
 }

 return 0;
}
