
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_wchar ;



pg_wchar
utf8_to_unicode(const unsigned char *c)
{
 if ((*c & 0x80) == 0)
  return (pg_wchar) c[0];
 else if ((*c & 0xe0) == 0xc0)
  return (pg_wchar) (((c[0] & 0x1f) << 6) |
         (c[1] & 0x3f));
 else if ((*c & 0xf0) == 0xe0)
  return (pg_wchar) (((c[0] & 0x0f) << 12) |
         ((c[1] & 0x3f) << 6) |
         (c[2] & 0x3f));
 else if ((*c & 0xf8) == 0xf0)
  return (pg_wchar) (((c[0] & 0x07) << 18) |
         ((c[1] & 0x3f) << 12) |
         ((c[2] & 0x3f) << 6) |
         (c[3] & 0x3f));
 else

  return 0xffffffff;
}
