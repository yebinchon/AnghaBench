
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valLen; int * pVal; } ;
typedef int PWSTR ;
typedef int * PDWORD ;
typedef int * PBYTE ;
typedef int DWORD ;
typedef int BOOL ;
typedef TYPE_1__ ATTRVAL ;


 scalar_t__ MIDL_user_allocate (int) ;
 int wcstoul (int ,int *,int) ;

BOOL kuhl_m_lsadump_dcshadow_build_replication_value_dword(ATTRVAL* pVal, PWSTR szValue)
{

 pVal->valLen = sizeof(DWORD);
 pVal->pVal = (PBYTE) MIDL_user_allocate(pVal->valLen);
 if(pVal->pVal)
  *(PDWORD) pVal->pVal = wcstoul(szValue, ((void*)0), 10);
 return pVal->pVal != ((void*)0);
}
