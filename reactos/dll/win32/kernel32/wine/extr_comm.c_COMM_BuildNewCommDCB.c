
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_6__ {int WriteTotalTimeoutConstant; scalar_t__ WriteTotalTimeoutMultiplier; scalar_t__ ReadTotalTimeoutConstant; scalar_t__ ReadTotalTimeoutMultiplier; scalar_t__ ReadIntervalTimeout; } ;
struct TYPE_5__ {int BaudRate; int StopBits; void* fDsrSensitivity; void* fRtsControl; void* fDtrControl; void* fOutxCtsFlow; void* fOutxDsrFlow; void* fInX; void* fOutX; int ByteSize; int Parity; } ;
typedef TYPE_1__* LPDCB ;
typedef char* LPCWSTR ;
typedef TYPE_2__* LPCOMMTIMEOUTS ;
typedef void* DWORD ;
typedef scalar_t__ BOOL ;


 char* COMM_ParseByteSize (int ,int *) ;
 char* COMM_ParseNumber (int ,int*) ;
 char* COMM_ParseOnOff (int ,void**) ;
 char* COMM_ParseParity (int ,int *) ;
 char* COMM_ParseStopBits (int ,int *) ;
 scalar_t__ FALSE ;
 int ONESTOPBIT ;
 scalar_t__ TRUE ;
 int TWOSTOPBITS ;
 int strncmpiW (char const*,char*,int) ;

__attribute__((used)) static BOOL COMM_BuildNewCommDCB(LPCWSTR device, LPDCB lpdcb, LPCOMMTIMEOUTS lptimeouts)
{
 DWORD temp;
 BOOL baud = FALSE, stop = FALSE;
 static const WCHAR baudW[] = {'b','a','u','d','=',0};
 static const WCHAR parityW[] = {'p','a','r','i','t','y','=',0};
 static const WCHAR dataW[] = {'d','a','t','a','=',0};
 static const WCHAR stopW[] = {'s','t','o','p','=',0};
 static const WCHAR toW[] = {'t','o','=',0};
 static const WCHAR xonW[] = {'x','o','n','=',0};
 static const WCHAR odsrW[] = {'o','d','s','r','=',0};
 static const WCHAR octsW[] = {'o','c','t','s','=',0};
 static const WCHAR dtrW[] = {'d','t','r','=',0};
 static const WCHAR rtsW[] = {'r','t','s','=',0};
 static const WCHAR idsrW[] = {'i','d','s','r','=',0};

 while(*device)
 {
  while(*device == ' ') device++;

  if(!strncmpiW(baudW, device, 5))
  {
   baud = TRUE;

   if(!(device = COMM_ParseNumber(device + 5, &lpdcb->BaudRate)))
    return FALSE;
  }
  else if(!strncmpiW(parityW, device, 7))
  {
   if(!(device = COMM_ParseParity(device + 7, &lpdcb->Parity)))
    return FALSE;
  }
  else if(!strncmpiW(dataW, device, 5))
  {
   if(!(device = COMM_ParseByteSize(device + 5, &lpdcb->ByteSize)))
    return FALSE;
  }
  else if(!strncmpiW(stopW, device, 5))
  {
   stop = TRUE;

   if(!(device = COMM_ParseStopBits(device + 5, &lpdcb->StopBits)))
    return FALSE;
  }
  else if(!strncmpiW(toW, device, 3))
  {
   if(!(device = COMM_ParseOnOff(device + 3, &temp)))
    return FALSE;

   lptimeouts->ReadIntervalTimeout = 0;
   lptimeouts->ReadTotalTimeoutMultiplier = 0;
   lptimeouts->ReadTotalTimeoutConstant = 0;
   lptimeouts->WriteTotalTimeoutMultiplier = 0;
   lptimeouts->WriteTotalTimeoutConstant = temp ? 60000 : 0;
  }
  else if(!strncmpiW(xonW, device, 4))
  {
   if(!(device = COMM_ParseOnOff(device + 4, &temp)))
    return FALSE;

   lpdcb->fOutX = temp;
   lpdcb->fInX = temp;
  }
  else if(!strncmpiW(odsrW, device, 5))
  {
   if(!(device = COMM_ParseOnOff(device + 5, &temp)))
    return FALSE;

   lpdcb->fOutxDsrFlow = temp;
  }
  else if(!strncmpiW(octsW, device, 5))
  {
   if(!(device = COMM_ParseOnOff(device + 5, &temp)))
    return FALSE;

   lpdcb->fOutxCtsFlow = temp;
  }
  else if(!strncmpiW(dtrW, device, 4))
  {
   if(!(device = COMM_ParseOnOff(device + 4, &temp)))
    return FALSE;

   lpdcb->fDtrControl = temp;
  }
  else if(!strncmpiW(rtsW, device, 4))
  {
   if(!(device = COMM_ParseOnOff(device + 4, &temp)))
    return FALSE;

   lpdcb->fRtsControl = temp;
  }
  else if(!strncmpiW(idsrW, device, 5))
  {
   if(!(device = COMM_ParseOnOff(device + 5, &temp)))
    return FALSE;



   lpdcb->fDsrSensitivity = temp;
  }
  else
   return FALSE;



  if(*device && *device != ' ')
   return FALSE;
 }


 if(!stop)
 {
  if(baud && lpdcb->BaudRate == 110)
   lpdcb->StopBits = TWOSTOPBITS;
  else
   lpdcb->StopBits = ONESTOPBIT;
 }

 return TRUE;
}
