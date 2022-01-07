
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int valLen; int * pVal; } ;
struct TYPE_4__ {int structLen; int NameLen; int StringName; } ;
typedef int PWSTR ;
typedef int * PBYTE ;
typedef int DWORD ;
typedef TYPE_1__ DSNAME ;
typedef int BOOL ;
typedef TYPE_2__ ATTRVAL ;


 scalar_t__ MIDL_user_allocate (int) ;
 int RtlCopyMemory (int ,int ,int) ;
 int RtlZeroMemory (int *,int) ;
 int lstrlen (int ) ;

BOOL kuhl_m_lsadump_dcshadow_build_replication_value_dn(ATTRVAL* pVal, PWSTR szValue)
{
 DWORD len = lstrlen(szValue);

 pVal->valLen = sizeof(DSNAME) + len * sizeof(WCHAR);
 pVal->pVal = (PBYTE) MIDL_user_allocate(pVal->valLen);
 if(pVal->pVal)
 {
  RtlZeroMemory(pVal->pVal, pVal->valLen);
  ((DSNAME*)pVal->pVal)->structLen = pVal->valLen;
  ((DSNAME*)pVal->pVal)->NameLen = len;
  RtlCopyMemory(((DSNAME*)pVal->pVal)->StringName, szValue, (len+1)*sizeof(WCHAR));
 }
 return pVal->pVal != ((void*)0);
}
