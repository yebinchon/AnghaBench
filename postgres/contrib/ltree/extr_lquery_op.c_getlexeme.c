
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_mblen (char*) ;
 scalar_t__ t_iseq (char*,char) ;

__attribute__((used)) static char *
getlexeme(char *start, char *end, int *len)
{
 char *ptr;
 int charlen;

 while (start < end && (charlen = pg_mblen(start)) == 1 && t_iseq(start, '_'))
  start += charlen;

 ptr = start;
 if (ptr >= end)
  return ((void*)0);

 while (ptr < end && !((charlen = pg_mblen(ptr)) == 1 && t_iseq(ptr, '_')))
  ptr += charlen;

 *len = ptr - start;
 return start;
}
