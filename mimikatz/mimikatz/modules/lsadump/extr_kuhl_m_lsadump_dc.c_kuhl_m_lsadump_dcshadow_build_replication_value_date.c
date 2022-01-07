
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int valLen; int * pVal; } ;
struct TYPE_5__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; } ;
typedef int PWSTR ;
typedef int * PBYTE ;
typedef int LONGLONG ;
typedef TYPE_1__ FILETIME ;
typedef int DSTIME ;
typedef int BOOL ;
typedef TYPE_2__ ATTRVAL ;


 scalar_t__ MIDL_user_allocate (int) ;
 int PRINT_ERROR_AUTO (char*) ;
 int RtlCopyMemory (int *,int*,int) ;
 scalar_t__ kull_m_string_stringToFileTime (int ,TYPE_1__*) ;

BOOL kuhl_m_lsadump_dcshadow_build_replication_value_date(ATTRVAL* pVal, PWSTR szValue)
{
 ULONG len = 0;
 FILETIME ft;
 DSTIME dstime;

 if(kull_m_string_stringToFileTime(szValue, &ft))
 {
  pVal->valLen = sizeof(DSTIME);
  pVal->pVal = (PBYTE) MIDL_user_allocate(pVal->valLen);
  dstime = ((LONGLONG)(ft.dwLowDateTime + ((LONGLONG)ft.dwHighDateTime << 32))) / 10000000;
  if(pVal->pVal)
   RtlCopyMemory(pVal->pVal, &dstime, sizeof(DSTIME));
 }
 else PRINT_ERROR_AUTO(L"kull_m_string_stringToFileTime");
 return pVal->pVal != ((void*)0);
}
