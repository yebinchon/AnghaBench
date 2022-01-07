
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_HIGHBIT_SET (unsigned char const) ;

__attribute__((used)) static int
pg_gb18030_verifier(const unsigned char *s, int len)
{
 int l;

 if (!IS_HIGHBIT_SET(*s))
  l = 1;
 else if (len >= 4 && *(s + 1) >= 0x30 && *(s + 1) <= 0x39)
 {

  if (*s >= 0x81 && *s <= 0xfe &&
   *(s + 2) >= 0x81 && *(s + 2) <= 0xfe &&
   *(s + 3) >= 0x30 && *(s + 3) <= 0x39)
   l = 4;
  else
   l = -1;
 }
 else if (len >= 2 && *s >= 0x81 && *s <= 0xfe)
 {

  if ((*(s + 1) >= 0x40 && *(s + 1) <= 0x7e) ||
   (*(s + 1) >= 0x80 && *(s + 1) <= 0xfe))
   l = 2;
  else
   l = -1;
 }
 else
  l = -1;
 return l;
}
