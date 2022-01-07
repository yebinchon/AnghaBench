
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* pg_locale_t ;
typedef int int32_t ;
typedef int UErrorCode ;
typedef char UChar ;
struct TYPE_5__ {int ucol; } ;
struct TYPE_6__ {int lt; TYPE_1__ icu; } ;
struct TYPE_7__ {scalar_t__ provider; scalar_t__ deterministic; TYPE_2__ info; } ;
typedef scalar_t__ Oid ;
typedef scalar_t__* LPWSTR ;


 scalar_t__ COLLPROVIDER_ICU ;
 scalar_t__ COLLPROVIDER_LIBC ;
 int CP_UTF8 ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int ERROR ;
 scalar_t__ GetDatabaseEncoding () ;
 int GetLastError () ;
 int Min (int,int) ;
 int MultiByteToWideChar (int ,int ,char const*,int,scalar_t__*,int) ;
 scalar_t__ PG_UTF8 ;
 int TEXTBUFLEN ;
 scalar_t__ U_FAILURE (int ) ;
 int U_ZERO_ERROR ;
 int check_collation_set (scalar_t__) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errmsg (char*,...) ;
 scalar_t__ errno ;
 int icu_to_uchar (char**,char const*,int) ;
 scalar_t__ lc_collate_is_c (scalar_t__) ;
 int memcmp (char const*,char const*,int) ;
 int memcpy (char*,char const*,int) ;
 char* palloc (int) ;
 int pfree (char*) ;
 TYPE_3__* pg_newlocale_from_collation (scalar_t__) ;
 int strcmp (char*,char*) ;
 int strcoll (char*,char*) ;
 int strcoll_l (char*,char*,int ) ;
 int u_errorName (int ) ;
 int ucol_strcoll (int ,char*,int ,char*,int ) ;
 int ucol_strcollUTF8 (int ,char const*,int,char const*,int,int *) ;
 int wcscoll (scalar_t__*,scalar_t__*) ;
 int wcscoll_l (scalar_t__*,scalar_t__*,int ) ;

int
varstr_cmp(const char *arg1, int len1, const char *arg2, int len2, Oid collid)
{
 int result;

 check_collation_set(collid);







 if (lc_collate_is_c(collid))
 {
  result = memcmp(arg1, arg2, Min(len1, len2));
  if ((result == 0) && (len1 != len2))
   result = (len1 < len2) ? -1 : 1;
 }
 else
 {
  char a1buf[TEXTBUFLEN];
  char a2buf[TEXTBUFLEN];
  char *a1p,
       *a2p;
  pg_locale_t mylocale = 0;

  if (collid != DEFAULT_COLLATION_OID)
   mylocale = pg_newlocale_from_collation(collid);
  if (len1 == len2 && memcmp(arg1, arg2, len1) == 0)
   return 0;
  if (len1 >= TEXTBUFLEN)
   a1p = (char *) palloc(len1 + 1);
  else
   a1p = a1buf;
  if (len2 >= TEXTBUFLEN)
   a2p = (char *) palloc(len2 + 1);
  else
   a2p = a2buf;

  memcpy(a1p, arg1, len1);
  a1p[len1] = '\0';
  memcpy(a2p, arg2, len2);
  a2p[len2] = '\0';

  if (mylocale)
  {
   if (mylocale->provider == COLLPROVIDER_ICU)
   {
    elog(ERROR, "unsupported collprovider: %c", mylocale->provider);

   }
   else
   {




    elog(ERROR, "unsupported collprovider: %c", mylocale->provider);

   }
  }
  else
   result = strcoll(a1p, a2p);


  if (result == 0 &&
   (!mylocale || mylocale->deterministic))
   result = strcmp(a1p, a2p);

  if (a1p != a1buf)
   pfree(a1p);
  if (a2p != a2buf)
   pfree(a2p);
 }

 return result;
}
