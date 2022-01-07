
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
shellquote(char *b, char const *s)
{
 *b++ = '\'';
 while (*s)
 {
  if (*s == '\'')
   *b++ = '\'', *b++ = '\\', *b++ = '\'';
  *b++ = *s++;
 }
 *b++ = '\'';
 return b;
}
