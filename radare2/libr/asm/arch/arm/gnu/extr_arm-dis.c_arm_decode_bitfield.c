
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
arm_decode_bitfield (const char *ptr,
       unsigned long insn,
       unsigned long *valuep,
       int *widthp)
{
  unsigned long value = 0;
  int width = 0;

  do
    {
      int start, end;
      int bits;

      for (start = 0; *ptr >= '0' && *ptr <= '9'; ptr++) {
       start = start * 10 + *ptr - '0';
      }
      if (*ptr == '-') {
       for (end = 0, ptr++; *ptr >= '0' && *ptr <= '9'; ptr++) {
        end = end * 10 + *ptr - '0';
       }
      } else {
       end = start;
      }
      bits = end - start;
      if (bits < 0) {
return ((void*)0);
}
      value |= ((insn >> start) & ((2ul << bits) - 1)) << width;
      width += bits + 1;
    }
  while (*ptr++ == ',');
  *valuep = value;
  if (widthp) {
   *widthp = width;
  }
  return ptr - 1;
}
