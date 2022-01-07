
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BIT (int,int) ;

__attribute__((used)) static int
sign_extend (int value, int bits)
{
 if (BIT (value, (bits - 1))) {
  value |= (0xffffffff << bits);
 }
 return value;
}
