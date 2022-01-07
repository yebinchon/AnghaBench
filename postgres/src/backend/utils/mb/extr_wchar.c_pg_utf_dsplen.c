
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ucs_wcwidth (int ) ;
 int utf8_to_unicode (unsigned char const*) ;

__attribute__((used)) static int
pg_utf_dsplen(const unsigned char *s)
{
 return ucs_wcwidth(utf8_to_unicode(s));
}
