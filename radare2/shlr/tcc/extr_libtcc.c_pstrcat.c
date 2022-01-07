
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pstrcpy (char*,int,char const*) ;
 int strlen (char*) ;

char *pstrcat(char *buf, int buf_size, const char *s)
{
 int len;
 len = strlen (buf);
 if (len < buf_size) {
  pstrcpy (buf + len, buf_size - len, s);
 }
 return buf;
}
