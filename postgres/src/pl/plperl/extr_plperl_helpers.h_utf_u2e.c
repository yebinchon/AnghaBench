
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_UTF8 ;
 char* pg_any_to_server (char*,size_t,int ) ;
 char* pstrdup (char*) ;

__attribute__((used)) static inline char *
utf_u2e(char *utf8_str, size_t len)
{
 char *ret;

 ret = pg_any_to_server(utf8_str, len, PG_UTF8);


 if (ret == utf8_str)
  ret = pstrdup(ret);

 return ret;
}
