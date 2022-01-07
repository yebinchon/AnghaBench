
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
SJIStoJIS (int *p1, int *p2)
{
  register unsigned char c1 = *p1;
  register unsigned char c2 = *p2;
  register int adjust = c2 < 159;
  register int rowOffset = c1 < 160 ? 112 : 176;
  register int cellOffset = adjust ? (31 + (c2 > 127)) : 126;

  *p1 = ((c1 - rowOffset) << 1) - adjust;
  *p2 -= cellOffset;
}
