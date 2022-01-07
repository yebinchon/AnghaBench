
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
pg_ascii_dsplen(const unsigned char *s)
{
 if (*s == '\0')
  return 0;
 if (*s < 0x20 || *s == 0x7f)
  return -1;

 return 1;
}
