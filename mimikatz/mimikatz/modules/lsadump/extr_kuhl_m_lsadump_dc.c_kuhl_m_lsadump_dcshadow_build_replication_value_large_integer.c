
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int __int64 ;
struct TYPE_3__ {int valLen; int * pVal; } ;
typedef int PWSTR ;
typedef int * PBYTE ;
typedef int BOOL ;
typedef TYPE_1__ ATTRVAL ;


 scalar_t__ MIDL_user_allocate (int) ;
 int _wcstoui64 (int ,int *,int) ;

BOOL kuhl_m_lsadump_dcshadow_build_replication_value_large_integer(ATTRVAL* pVal, PWSTR szValue)
{

 pVal->valLen = sizeof(__int64);
 pVal->pVal = (PBYTE) MIDL_user_allocate(pVal->valLen);
 if(pVal->pVal)
  *(__int64*) pVal->pVal = _wcstoui64(szValue, ((void*)0), 10);
 return pVal->pVal != ((void*)0);
}
