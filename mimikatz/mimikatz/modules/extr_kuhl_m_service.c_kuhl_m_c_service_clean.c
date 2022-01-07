
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int SERVICE_STOP ;
 int STATUS_SUCCESS ;
 int kuhl_m_service_CtrlHandler (int ) ;
 scalar_t__ m_ServiceStatusHandle ;

NTSTATUS kuhl_m_c_service_clean()
{
 if(m_ServiceStatusHandle)
  kuhl_m_service_CtrlHandler(SERVICE_STOP);
 return STATUS_SUCCESS;
}
