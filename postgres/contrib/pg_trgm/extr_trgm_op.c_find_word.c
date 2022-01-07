
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISWORDCHR (char*) ;
 int pg_mblen (char*) ;

__attribute__((used)) static char *
find_word(char *str, int lenstr, char **endword, int *charlen)
{
 char *beginword = str;

 while (beginword - str < lenstr && !ISWORDCHR(beginword))
  beginword += pg_mblen(beginword);

 if (beginword - str >= lenstr)
  return ((void*)0);

 *endword = beginword;
 *charlen = 0;
 while (*endword - str < lenstr && ISWORDCHR(*endword))
 {
  *endword += pg_mblen(*endword);
  (*charlen)++;
 }

 return beginword;
}
