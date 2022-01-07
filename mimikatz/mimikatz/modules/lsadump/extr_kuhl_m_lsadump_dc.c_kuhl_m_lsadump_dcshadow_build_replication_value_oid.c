
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valLen; scalar_t__ pVal; } ;
typedef int SCHEMA_PREFIX_TABLE ;
typedef int PWSTR ;
typedef scalar_t__ PSTR ;
typedef scalar_t__ PBYTE ;
typedef int DWORD ;
typedef int BOOL ;
typedef TYPE_1__ ATTRVAL ;
typedef int ATTRTYP ;


 int FALSE ;
 int LocalFree (scalar_t__) ;
 scalar_t__ MIDL_user_allocate (int) ;
 int SCHEMA_DEFAULT_PREFIX_TABLE ;
 int kull_m_rpc_drsr_MakeAttid (int *,scalar_t__,int *,int ) ;
 scalar_t__ kull_m_string_unicode_to_ansi (int ) ;

BOOL kuhl_m_lsadump_dcshadow_build_replication_value_oid(ATTRVAL* pVal, PWSTR szValue)
{
 BOOL fSuccess = FALSE;
 PSTR szANSIValue = kull_m_string_unicode_to_ansi(szValue);

 if(szANSIValue)
 {
  pVal->valLen = sizeof(DWORD);
  pVal->pVal = (PBYTE) MIDL_user_allocate(pVal->valLen);
  if(pVal->pVal)
   fSuccess = kull_m_rpc_drsr_MakeAttid((SCHEMA_PREFIX_TABLE*) &SCHEMA_DEFAULT_PREFIX_TABLE, szANSIValue, (ATTRTYP*) pVal->pVal, FALSE );
  LocalFree(szANSIValue);
 }
 return fSuccess;
}
