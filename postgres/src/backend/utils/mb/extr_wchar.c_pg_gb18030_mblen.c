
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_HIGHBIT_SET (unsigned char const) ;

__attribute__((used)) static int
pg_gb18030_mblen(const unsigned char *s)
{
 int len;

 if (!IS_HIGHBIT_SET(*s))
  len = 1;
 else if (*(s + 1) >= 0x30 && *(s + 1) <= 0x39)
  len = 4;
 else
  len = 2;
 return len;
}
