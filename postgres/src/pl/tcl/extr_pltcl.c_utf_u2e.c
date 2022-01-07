
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_UTF8 ;
 char* pg_any_to_server (char const*,int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline char *
utf_u2e(const char *src)
{
 return pg_any_to_server(src, strlen(src), PG_UTF8);
}
