
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits8 ;



__attribute__((used)) static bool
array_get_isnull(const bits8 *nullbitmap, int offset)
{
 if (nullbitmap == ((void*)0))
  return 0;
 if (nullbitmap[offset / 8] & (1 << (offset % 8)))
  return 0;
 return 1;
}
