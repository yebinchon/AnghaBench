
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (int) ;
 int report_invalid_encoding (int,char const*,int) ;

void
latin2mic(const unsigned char *l, unsigned char *p, int len,
    int lc, int encoding)
{
 int c1;

 while (len > 0)
 {
  c1 = *l;
  if (c1 == 0)
   report_invalid_encoding(encoding, (const char *) l, len);
  if (IS_HIGHBIT_SET(c1))
   *p++ = lc;
  *p++ = c1;
  l++;
  len--;
 }
 *p = '\0';
}
