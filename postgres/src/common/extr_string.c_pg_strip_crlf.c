
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

int
pg_strip_crlf(char *str)
{
 int len = strlen(str);

 while (len > 0 && (str[len - 1] == '\n' ||
        str[len - 1] == '\r'))
  str[--len] = '\0';

 return len;
}
