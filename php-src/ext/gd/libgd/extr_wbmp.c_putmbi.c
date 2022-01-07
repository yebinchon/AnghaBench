
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
putmbi (int i, void (*putout) (int c, void *out), void *out)
{
  int cnt, l, accu;


  cnt = 0;
  accu = 0;
  while (accu != i)
    accu += i & 0x7f << 7 * cnt++;


  for (l = cnt - 1; l > 0; l--)
    putout (0x80 | (i & 0x7f << 7 * l) >> 7 * l, out);

  putout (i & 0x7f, out);

}
