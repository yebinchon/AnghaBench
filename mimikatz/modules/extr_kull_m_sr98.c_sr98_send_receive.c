
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int outBuffer ;
typedef int inBuffer ;
typedef int* PBYTE ;
typedef int* LPCVOID ;
typedef int* LPBYTE ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ClearCommError (int ,int *,int *) ;
 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int PRINT_ERROR (char*,...) ;
 int PRINT_ERROR_AUTO (char*) ;
 int PURGE_RXCLEAR ;
 int PURGE_TXCLEAR ;
 int PurgeComm (int ,int) ;
 scalar_t__ ReadFile (int ,int*,int,int*,int *) ;
 int RtlCopyMemory (int*,int*,int) ;
 int SR98_SLEEP_BEFORE_RECV ;
 int SR98_SLEEP_BEFORE_SEND ;
 int Sleep (int ) ;
 int TRUE ;
 scalar_t__ WriteFile (int ,int*,int,int*,int *) ;

BOOL sr98_send_receive(HANDLE hFile, BYTE ctl, LPCVOID in, BYTE szIn, LPBYTE *out, BYTE *szOut)
{
 BOOL status = FALSE;
 BYTE i, crc, inBuffer[24] = {0x03, 0x01, 5 + szIn}, outBuffer[256] = {0}, szBuffer;
 DWORD ret;




 if(szIn < (24 - 6))
 {
  inBuffer[3] = ctl;
  RtlCopyMemory(inBuffer + 4, in, szIn);
  for(i = 0, crc = 0; i < (3 + szIn); i++)
   crc ^= inBuffer[i + 1];

  inBuffer[4 + szIn] = crc;
  inBuffer[5 + szIn] = 0x04;




  PurgeComm(hFile, PURGE_TXCLEAR | PURGE_RXCLEAR);
  Sleep(SR98_SLEEP_BEFORE_SEND);
  if(WriteFile(hFile, inBuffer, sizeof(inBuffer), &ret, ((void*)0)) && (ret == sizeof(inBuffer)))
  {
   ClearCommError(hFile, ((void*)0), ((void*)0));
   Sleep(SR98_SLEEP_BEFORE_RECV);
   if(ReadFile(hFile, outBuffer, sizeof(outBuffer), &ret, ((void*)0)))
   {



    if(ret >= 6)
    {
     if((outBuffer[0] == 0x05) && (outBuffer[1] == 0x01))
     {
      if((outBuffer[2] >= 5) && (outBuffer[3] == (ctl | 0x80)))
      {
       szBuffer = outBuffer[2] - 5;

       for(i = 0, crc = 0; i < (3 + szBuffer); i++)
        crc ^= outBuffer[i + 1];
       if((outBuffer[4 + szBuffer] == crc) && (outBuffer[5 + szBuffer] == 0x04))
       {
        status = TRUE;
        if(szBuffer && out && szOut)
        {
         *szOut = szBuffer;
         if(*out = (PBYTE) LocalAlloc(LPTR, szBuffer))
          RtlCopyMemory(*out, outBuffer + 4, szBuffer);
         else status = FALSE;
        }



       }
       else PRINT_ERROR(L"Bad CRC/data\n");
      }
      else PRINT_ERROR(L"Bad data size/ctl code\n");
     }
     else PRINT_ERROR(L"Bad header\n");
    }
    else PRINT_ERROR(L"Read size = %u\n", ret);
   }
   else PRINT_ERROR_AUTO(L"ReadFile");
  }
  else PRINT_ERROR_AUTO(L"WriteFile");
 }
 return status;
}
