
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef scalar_t__ wchar_t ;
typedef int pg_locale_t ;
typedef int Oid ;


 int DEFAULT_COLLATION_OID ;
 int TOUCHAR (char const*) ;
 int WC_BUF_LEN ;
 int char2wchar (scalar_t__*,int,char const*,int,int ) ;
 int isprint (int ) ;
 int iswprint (int ) ;
 scalar_t__ lc_ctype_is_c (int ) ;
 int pg_mblen (char const*) ;

int
t_isprint(const char *ptr)
{
 int clen = pg_mblen(ptr);
 wchar_t character[WC_BUF_LEN];
 Oid collation = DEFAULT_COLLATION_OID;
 pg_locale_t mylocale = 0;

 if (clen == 1 || lc_ctype_is_c(collation))
  return isprint(TOUCHAR(ptr));

 char2wchar(character, WC_BUF_LEN, ptr, clen, mylocale);

 return iswprint((wint_t) character[0]);
}
