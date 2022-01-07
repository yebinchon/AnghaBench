
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_SERVICE_NOT_ACTIVE ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int PRINT_ERROR_AUTO (char*) ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ TRUE ;
 int kprintf (char*,int ) ;
 scalar_t__ kull_m_service_remove (int ) ;
 scalar_t__ kull_m_service_stop (int ) ;

BOOL kull_m_service_uninstall(PCWSTR serviceName)
{
 BOOL status = FALSE, toRemove = TRUE;
 if(kull_m_service_stop(serviceName))
  kprintf(L"[+] \'%s\' service stopped\n", serviceName);
 else if(GetLastError() == ERROR_SERVICE_NOT_ACTIVE)
  kprintf(L"[*] \'%s\' service not running\n", serviceName);
 else
 {
  toRemove = FALSE;
  PRINT_ERROR_AUTO(L"kull_m_service_stop");
 }

 if(toRemove)
 {
  if(status = kull_m_service_remove(serviceName))
   kprintf(L"[+] \'%s\' service removed\n", serviceName);
  else PRINT_ERROR_AUTO(L"kull_m_service_remove");
 }
 return STATUS_SUCCESS;
}
