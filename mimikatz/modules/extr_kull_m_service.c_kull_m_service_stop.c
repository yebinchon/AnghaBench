
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int BOOL ;


 int SERVICE_CONTROL_STOP ;
 int SERVICE_STOP ;
 int kull_m_service_genericControl (int ,int ,int ,int *) ;

BOOL kull_m_service_stop(PCWSTR serviceName)
{
 return(kull_m_service_genericControl(serviceName, SERVICE_STOP, SERVICE_CONTROL_STOP, ((void*)0)));
}
