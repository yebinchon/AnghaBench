
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int STATUS_SUCCESS ;
 int * hKiwiEventRunning ;
 int * m_ServiceStatusHandle ;

NTSTATUS kuhl_m_c_service_init()
{
 m_ServiceStatusHandle = ((void*)0);
 hKiwiEventRunning = ((void*)0);
 return STATUS_SUCCESS;
}
