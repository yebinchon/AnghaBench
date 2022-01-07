
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PVOID ;
typedef int* PDWORD ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ DeviceIoControl (int ,scalar_t__,int *,scalar_t__,int *,int,scalar_t__*,int *) ;
 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int LPTR ;
 int * LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 int PRINT_ERROR (char*,scalar_t__,scalar_t__) ;

BOOL kull_m_kernel_ioctl_handle(HANDLE hDriver, DWORD ioctlCode, PVOID bufferIn, DWORD szBufferIn, PVOID * pBufferOut, PDWORD pSzBufferOut, BOOL autobuffer)
{
 BOOL status = FALSE;
 DWORD lStatus = ERROR_MORE_DATA, returned;

 if(!autobuffer)
 {
  status = DeviceIoControl(hDriver, ioctlCode, bufferIn, szBufferIn, pBufferOut ? *pBufferOut : ((void*)0), pSzBufferOut ? *pSzBufferOut : 0, &returned, ((void*)0));
 }
 else
 {
  for(*pSzBufferOut = 0x10000; (lStatus == ERROR_MORE_DATA) && (*pBufferOut = LocalAlloc(LPTR, *pSzBufferOut)) ; *pSzBufferOut <<= 1)
  {
   if(status = DeviceIoControl(hDriver, ioctlCode, bufferIn, szBufferIn, *pBufferOut, *pSzBufferOut, &returned, ((void*)0)))
   {
    lStatus = ERROR_SUCCESS;
   }
   else
   {
    lStatus = GetLastError();
    if(lStatus == ERROR_MORE_DATA)
     LocalFree(*pBufferOut);
   }
  }
 }
 if(!status)
 {
  PRINT_ERROR(L"DeviceIoControl (0x%08x) : 0x%08x\n", ioctlCode, GetLastError());
  if(autobuffer)
   LocalFree(*pBufferOut);
 }
 else if(pSzBufferOut)
  *pSzBufferOut = returned;
 return status;
}
