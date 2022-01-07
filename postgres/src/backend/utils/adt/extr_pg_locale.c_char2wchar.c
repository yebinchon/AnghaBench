
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
typedef TYPE_2__* pg_locale_t ;
typedef int locale_t ;
struct TYPE_4__ {int lt; } ;
struct TYPE_5__ {scalar_t__ provider; TYPE_1__ info; } ;


 int Assert (int) ;
 scalar_t__ COLLPROVIDER_LIBC ;
 int CP_UTF8 ;
 int ERRCODE_CHARACTER_NOT_IN_REPERTOIRE ;
 int ERROR ;
 scalar_t__ GetDatabaseEncoding () ;
 size_t MultiByteToWideChar (int ,int ,char const*,size_t,scalar_t__*,size_t) ;
 scalar_t__ PG_UTF8 ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 size_t mbstowcs (scalar_t__*,char*,size_t) ;
 size_t mbstowcs_l (scalar_t__*,char*,size_t,int ) ;
 int pfree (char*) ;
 int pg_verifymbstr (char const*,size_t,int) ;
 char* pnstrdup (char const*,size_t) ;
 int uselocale (int ) ;

size_t
char2wchar(wchar_t *to, size_t tolen, const char *from, size_t fromlen,
     pg_locale_t locale)
{
 size_t result;

 Assert(!locale || locale->provider == COLLPROVIDER_LIBC);

 if (tolen == 0)
  return 0;
 {

  char *str = pnstrdup(from, fromlen);

  if (locale == (pg_locale_t) 0)
  {

   result = mbstowcs(to, str, tolen);
  }
  else
  {
   elog(ERROR, "mbstowcs_l is not available");
   result = 0;

  }

  pfree(str);
 }

 if (result == -1)
 {
  pg_verifymbstr(from, fromlen, 0);

  ereport(ERROR,
    (errcode(ERRCODE_CHARACTER_NOT_IN_REPERTOIRE),
     errmsg("invalid multibyte character for locale"),
     errhint("The server's LC_CTYPE locale is probably incompatible with the database encoding.")));
 }

 return result;
}
