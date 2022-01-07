
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int * LPWSTR ;
typedef int DWORD ;
typedef int COMPUTER_NAME_FORMAT ;
typedef scalar_t__ BOOL ;


 int ComputerNamePhysicalDnsFullyQualified ;
 int ComputerNamePhysicalNetBIOS ;
 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ FALSE ;
 scalar_t__ GetComputerNameEx (int ,int *,int*) ;
 scalar_t__ GetLastError () ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 int PRINT_ERROR_AUTO (char*) ;

BOOL kull_m_net_getComputerName(BOOL isFull, LPWSTR *name)
{
 BOOL status = FALSE;
 COMPUTER_NAME_FORMAT ft = isFull ? ComputerNamePhysicalDnsFullyQualified : ComputerNamePhysicalNetBIOS;
 DWORD dwSize = 0;
 if(!GetComputerNameEx(ft, ((void*)0), &dwSize) && (GetLastError() == ERROR_MORE_DATA))
 {
  if(*name = (wchar_t *) LocalAlloc(LPTR, dwSize * sizeof(wchar_t)))
  {
   if(!(status = GetComputerNameEx(ft, *name, &dwSize)))
   {
    PRINT_ERROR_AUTO(L"GetComputerNameEx(data)");
    LocalFree(*name);
   }
  }
 }
 else PRINT_ERROR_AUTO(L"GetComputerNameEx(init)");
 return status;
}
