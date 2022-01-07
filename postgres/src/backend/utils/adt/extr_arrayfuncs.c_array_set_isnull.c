
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits8 ;



__attribute__((used)) static void
array_set_isnull(bits8 *nullbitmap, int offset, bool isNull)
{
 int bitmask;

 nullbitmap += offset / 8;
 bitmask = 1 << (offset % 8);
 if (isNull)
  *nullbitmap &= ~bitmask;
 else
  *nullbitmap |= bitmask;
}
