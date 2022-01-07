
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;
 char* palloc (int) ;
 int pg_mblen (char*) ;

__attribute__((used)) static char *
extract_mb_char(char *s)
{
 char *res;
 int len;

 len = pg_mblen(s);
 res = palloc(len + 1);
 memcpy(res, s, len);
 res[len] = '\0';

 return res;
}
