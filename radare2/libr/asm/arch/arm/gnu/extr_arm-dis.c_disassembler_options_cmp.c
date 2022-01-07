
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
disassembler_options_cmp (const char *s1, const char *s2)
{
  unsigned char c1, c2;

  do
    {
      c1 = (unsigned char) *s1++;
      if (c1 == ',') {
       c1 = '\0';
      }
      c2 = (unsigned char) *s2++;
      if (c2 == ',') {
       c2 = '\0';
      }
      if (c1 == '\0') {
       return c1 - c2;
      }
    }
  while (c1 == c2);

  return c1 - c2;
}
