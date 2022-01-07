
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int LocalFree (int*) ;
 int PRINT_ERROR (char*,int) ;
 int RtlCopyMemory (int*,int*,int) ;
 int SR98_IOCTL_EMID_READ ;
 scalar_t__ sr98_send_receive (int ,int ,int *,int ,int**,int*) ;

BOOL sr98_read_emid(HANDLE hFile, BYTE emid[5])
{
 BOOL status = FALSE;
 BYTE *out, szOut;
 if(sr98_send_receive(hFile, SR98_IOCTL_EMID_READ, ((void*)0), 0, &out, &szOut))
 {
  if(status = (szOut == 6))
   RtlCopyMemory(emid, out + 1, 5);
  else PRINT_ERROR(L"Received size is not 6 (0x%02x)\n", szOut);
  LocalFree(out);
 }
 return status;
}
