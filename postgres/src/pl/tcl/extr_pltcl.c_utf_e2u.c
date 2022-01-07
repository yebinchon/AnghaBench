
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_UTF8 ;
 char* pg_server_to_any (char const*,int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline char *
utf_e2u(const char *src)
{
 return pg_server_to_any(src, strlen(src), PG_UTF8);
}
