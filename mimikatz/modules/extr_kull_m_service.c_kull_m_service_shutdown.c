
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int BOOL ;


 int SERVICE_ALL_ACCESS ;
 int SERVICE_CONTROL_SHUTDOWN ;
 int kull_m_service_genericControl (int ,int ,int ,int *) ;

BOOL kull_m_service_shutdown(PCWSTR serviceName)
{
 return(kull_m_service_genericControl(serviceName, SERVICE_ALL_ACCESS, SERVICE_CONTROL_SHUTDOWN, ((void*)0)));
}
