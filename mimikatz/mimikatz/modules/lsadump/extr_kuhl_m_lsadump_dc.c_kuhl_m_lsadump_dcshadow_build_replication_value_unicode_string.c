
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int valLen; scalar_t__ pVal; } ;
typedef int PWSTR ;
typedef scalar_t__ PBYTE ;
typedef int BOOL ;
typedef TYPE_1__ ATTRVAL ;


 int FALSE ;
 scalar_t__ MIDL_user_allocate (int) ;
 int RtlCopyMemory (scalar_t__,int ,int) ;
 int TRUE ;
 int lstrlen (int ) ;

BOOL kuhl_m_lsadump_dcshadow_build_replication_value_unicode_string(ATTRVAL* pVal, PWSTR szValue)
{

 pVal->valLen = (lstrlen(szValue) + 1) * sizeof(WCHAR);
 pVal->pVal = (PBYTE) MIDL_user_allocate( pVal->valLen);
 if(!pVal->pVal)
  return FALSE;
 RtlCopyMemory(pVal->pVal, szValue, pVal->valLen);
 return TRUE;
}
