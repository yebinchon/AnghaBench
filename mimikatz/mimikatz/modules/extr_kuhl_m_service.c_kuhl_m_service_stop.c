
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int SERVICE_CONTROL_STOP ;
 int genericFunction (int ,char*,int,int **,int ) ;
 int kull_m_service_stop ;

NTSTATUS kuhl_m_service_stop(int argc, wchar_t * argv[])
{
 return genericFunction(kull_m_service_stop, L"Stopping", argc, argv, SERVICE_CONTROL_STOP);
}
