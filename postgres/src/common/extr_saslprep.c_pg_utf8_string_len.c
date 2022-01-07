
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_utf8_islegal (unsigned char const*,int) ;
 int pg_utf_mblen (unsigned char const*) ;

__attribute__((used)) static int
pg_utf8_string_len(const char *source)
{
 const unsigned char *p = (const unsigned char *) source;
 int l;
 int num_chars = 0;

 while (*p)
 {
  l = pg_utf_mblen(p);

  if (!pg_utf8_islegal(p, l))
   return -1;

  p += l;
  num_chars++;
 }

 return num_chars;
}
