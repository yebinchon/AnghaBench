
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef scalar_t__ wchar_t ;
typedef int pg_locale_t ;
typedef int Oid ;


 int Assert (int) ;
 int DEFAULT_COLLATION_OID ;
 int ERRCODE_CHARACTER_NOT_IN_REPERTOIRE ;
 int ERROR ;
 int TOUCHAR (char const*) ;
 int char2wchar (scalar_t__*,int,char const*,int,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int lc_ctype_is_c (int ) ;
 scalar_t__ palloc (int) ;
 int pfree (scalar_t__*) ;
 int pg_database_encoding_max_length () ;
 char* pstrdup (char*) ;
 int tolower (int ) ;
 scalar_t__ towlower (int ) ;
 int wchar2char (char*,scalar_t__*,int,int ) ;

char *
lowerstr_with_len(const char *str, int len)
{
 char *out;
 Oid collation = DEFAULT_COLLATION_OID;
 pg_locale_t mylocale = 0;

 if (len == 0)
  return pstrdup("");







 if (pg_database_encoding_max_length() > 1 && !lc_ctype_is_c(collation))
 {
  wchar_t *wstr,
       *wptr;
  int wlen;






  wptr = wstr = (wchar_t *) palloc(sizeof(wchar_t) * (len + 1));

  wlen = char2wchar(wstr, len + 1, str, len, mylocale);
  Assert(wlen <= len);

  while (*wptr)
  {
   *wptr = towlower((wint_t) *wptr);
   wptr++;
  }




  len = pg_database_encoding_max_length() * wlen + 1;
  out = (char *) palloc(len);

  wlen = wchar2char(out, wstr, len, mylocale);

  pfree(wstr);

  if (wlen < 0)
   ereport(ERROR,
     (errcode(ERRCODE_CHARACTER_NOT_IN_REPERTOIRE),
      errmsg("conversion from wchar_t to server encoding failed: %m")));
  Assert(wlen < len);
 }
 else
 {
  const char *ptr = str;
  char *outptr;

  outptr = out = (char *) palloc(sizeof(char) * (len + 1));
  while ((ptr - str) < len && *ptr)
  {
   *outptr++ = tolower(TOUCHAR(ptr));
   ptr++;
  }
  *outptr = '\0';
 }

 return out;
}
