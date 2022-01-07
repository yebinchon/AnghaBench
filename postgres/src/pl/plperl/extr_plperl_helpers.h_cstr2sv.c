
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SV ;


 scalar_t__ GetDatabaseEncoding () ;
 scalar_t__ PG_SQL_ASCII ;
 int SvUTF8_on (int *) ;
 int dTHX ;
 int * newSVpv (char const*,int ) ;
 int pfree (char*) ;
 char* utf_e2u (char const*) ;

__attribute__((used)) static inline SV *
cstr2sv(const char *str)
{
 dTHX;
 SV *sv;
 char *utf8_str;


 if (GetDatabaseEncoding() == PG_SQL_ASCII)
  return newSVpv(str, 0);

 utf8_str = utf_e2u(str);

 sv = newSVpv(utf8_str, 0);
 SvUTF8_on(sv);
 pfree(utf8_str);

 return sv;
}
