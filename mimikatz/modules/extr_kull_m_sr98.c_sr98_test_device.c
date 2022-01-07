
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temoin ;
typedef int USHORT ;
typedef int* PUSHORT ;
typedef int HANDLE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int LocalFree (int*) ;
 int PRINT_ERROR (char*,int) ;
 int SR98_IOCTL_TEST_DEVICE ;
 int _byteswap_ushort (int) ;
 scalar_t__ sr98_send_receive (int ,int ,int*,int,int**,int*) ;

BOOL sr98_test_device(HANDLE hFile)
{
 BOOL status = FALSE;
 USHORT temoin = 'BB';
 BYTE *out, szOut;
 if(sr98_send_receive(hFile, SR98_IOCTL_TEST_DEVICE, &temoin, sizeof(temoin), &out, &szOut))
 {
  if(szOut == sizeof(USHORT))
  {
   if(!(status = *((PUSHORT) out) == (temoin | 0x0100)))
    PRINT_ERROR(L"Received data is not origin+1 (0x%04x)\n", _byteswap_ushort(*((PUSHORT) out)));
  }
  else PRINT_ERROR(L"Received size is not 2 (0x%02x)\n", szOut);
  LocalFree(out);
 }
 return status;
}
