
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inBuffer ;
typedef int HANDLE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int PRINT_ERROR (char*,int) ;
 int SR98_IOCTL_T5577 ;
 int SR98_SUB_IOCTL_T5577_RESET ;
 scalar_t__ sr98_send_receive (int ,int ,int*,int,int**,int*) ;

BOOL sr98_t5577_reset(HANDLE hFile, BYTE DataRate)
{
 BYTE inBuffer[5] = {SR98_SUB_IOCTL_T5577_RESET, DataRate & 0x0b}, *out, szOut;
 if(sr98_send_receive(hFile, SR98_IOCTL_T5577, inBuffer, sizeof(inBuffer), &out, &szOut))
 {
  if(szOut == 1)
  {
   if(*out)
    PRINT_ERROR(L"Data size is not 0 (0x%02x)\n", *out);
  }
  else PRINT_ERROR(L"Received size is not 1 (0x%02x)\n", szOut);
 }
 return FALSE;
}
