
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int PDWORD ;
typedef int PCWSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int PRINT_ERROR_AUTO (char*) ;
 int kull_m_kernel_ioctl_handle (scalar_t__,int ,int ,int ,int *,int ,int ) ;

BOOL kull_m_kernel_ioctl(PCWSTR driver, DWORD ioctlCode, PVOID bufferIn, DWORD szBufferIn, PVOID * pBufferOut, PDWORD pSzBufferOut, BOOL autobuffer)
{
 BOOL status = FALSE;
 HANDLE hDriver;
 hDriver = CreateFile(driver, GENERIC_READ | GENERIC_WRITE, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
 if(hDriver && hDriver != INVALID_HANDLE_VALUE)
 {
  status = kull_m_kernel_ioctl_handle(hDriver, ioctlCode, bufferIn, szBufferIn, pBufferOut, pSzBufferOut, autobuffer);
  CloseHandle(hDriver);
 }
 else
  PRINT_ERROR_AUTO(L"CreateFile");
 return status;
}
