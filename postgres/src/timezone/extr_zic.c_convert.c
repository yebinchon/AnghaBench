
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;



__attribute__((used)) static void
convert(const int32 val, char *const buf)
{
 int i;
 int shift;
 unsigned char *const b = (unsigned char *) buf;

 for (i = 0, shift = 24; i < 4; ++i, shift -= 8)
  b[i] = val >> shift;
}
