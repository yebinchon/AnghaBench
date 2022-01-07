
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int FALSE ;
 int LocalFree (int *) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int kprintf (char*,...) ;
 scalar_t__ kull_m_net_getComputerName (int ,int **) ;

NTSTATUS kuhl_m_standard_hostname(int argc, wchar_t * argv[])
{
 wchar_t *buffer;
 if(kull_m_net_getComputerName(TRUE, &buffer))
 {
  kprintf(L"%s", buffer);
  LocalFree(buffer);
 }
 if(kull_m_net_getComputerName(FALSE, &buffer))
 {
  kprintf(L" (%s)", buffer);
  LocalFree(buffer);
 }
 kprintf(L"\n");
 return STATUS_SUCCESS;
}
