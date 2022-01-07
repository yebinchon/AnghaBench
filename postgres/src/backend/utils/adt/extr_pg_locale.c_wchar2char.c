
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef TYPE_2__* pg_locale_t ;
typedef int locale_t ;
struct TYPE_4__ {int lt; } ;
struct TYPE_5__ {scalar_t__ provider; TYPE_1__ info; } ;


 int Assert (int) ;
 scalar_t__ COLLPROVIDER_LIBC ;
 int CP_UTF8 ;
 int ERROR ;
 scalar_t__ GetDatabaseEncoding () ;
 scalar_t__ PG_UTF8 ;
 size_t WideCharToMultiByte (int ,int ,int const*,int,char*,size_t,int *,int *) ;
 int elog (int ,char*) ;
 int uselocale (int ) ;
 size_t wcstombs (char*,int const*,size_t) ;
 size_t wcstombs_l (char*,int const*,size_t,int ) ;

size_t
wchar2char(char *to, const wchar_t *from, size_t tolen, pg_locale_t locale)
{
 size_t result;

 Assert(!locale || locale->provider == COLLPROVIDER_LIBC);

 if (tolen == 0)
  return 0;
 if (locale == (pg_locale_t) 0)
 {

  result = wcstombs(to, from, tolen);
 }
 else
 {
  elog(ERROR, "wcstombs_l is not available");
  result = 0;

 }

 return result;
}
