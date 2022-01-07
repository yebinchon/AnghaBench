
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int STATUS_SUCCESS ;
 int kuhl_m_dpapi_oe_credentials_delete () ;
 int kuhl_m_dpapi_oe_domainkeys_delete () ;
 int kuhl_m_dpapi_oe_masterkeys_delete () ;

NTSTATUS kuhl_m_dpapi_oe_clean()
{
 kuhl_m_dpapi_oe_credentials_delete();
 kuhl_m_dpapi_oe_masterkeys_delete();
 kuhl_m_dpapi_oe_domainkeys_delete();
 return STATUS_SUCCESS;
}
