
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_COPY_DATA_DISPLAY ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ palloc (int) ;
 int pg_mbcliplen (char const*,int,int) ;
 char* pstrdup (char const*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
limit_printout_length(const char *str)
{


 int slen = strlen(str);
 int len;
 char *res;


 if (slen <= 100)
  return pstrdup(str);


 len = pg_mbcliplen(str, slen, 100);




 res = (char *) palloc(len + 4);
 memcpy(res, str, len);
 strcpy(res + len, "...");

 return res;
}
