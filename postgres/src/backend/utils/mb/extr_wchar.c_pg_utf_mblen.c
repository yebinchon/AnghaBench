
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
pg_utf_mblen(const unsigned char *s)
{
 int len;

 if ((*s & 0x80) == 0)
  len = 1;
 else if ((*s & 0xe0) == 0xc0)
  len = 2;
 else if ((*s & 0xf0) == 0xe0)
  len = 3;
 else if ((*s & 0xf8) == 0xf0)
  len = 4;






 else
  len = 1;
 return len;
}
