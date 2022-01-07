
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int BaudRate; void* fRtsControl; void* fDtrControl; void* fOutxDsrFlow; void* fOutxCtsFlow; void* fOutX; void* fInX; int StopBits; int ByteSize; int Parity; } ;
typedef TYPE_1__* LPDCB ;
typedef char* LPCWSTR ;
typedef void* BOOL ;


 char* COMM_ParseByteSize (char*,int *) ;
 char* COMM_ParseNumber (char*,int*) ;
 char* COMM_ParseParity (char*,int *) ;
 char* COMM_ParseStopBits (char*,int *) ;
 void* DTR_CONTROL_ENABLE ;
 void* DTR_CONTROL_HANDSHAKE ;
 void* FALSE ;
 void* RTS_CONTROL_ENABLE ;
 void* RTS_CONTROL_HANDSHAKE ;
 void* TRUE ;
 int toupperW (int ) ;

__attribute__((used)) static BOOL COMM_BuildOldCommDCB(LPCWSTR device, LPDCB lpdcb)
{
 WCHAR last = 0;

 if(!(device = COMM_ParseNumber(device, &lpdcb->BaudRate)))
  return FALSE;

 switch(lpdcb->BaudRate)
 {
 case 11:
 case 30:
 case 60:
  lpdcb->BaudRate *= 10;
  break;
 case 12:
 case 24:
 case 48:
 case 96:
  lpdcb->BaudRate *= 100;
  break;
 case 19:
  lpdcb->BaudRate = 19200;
  break;
 }

 while(*device == ' ') device++;
 if(*device++ != ',') return FALSE;
 while(*device == ' ') device++;

 if(!(device = COMM_ParseParity(device, &lpdcb->Parity)))
  return FALSE;

 while(*device == ' ') device++;
 if(*device++ != ',') return FALSE;
 while(*device == ' ') device++;

 if(!(device = COMM_ParseByteSize(device, &lpdcb->ByteSize)))
  return FALSE;

 while(*device == ' ') device++;
 if(*device++ != ',') return FALSE;
 while(*device == ' ') device++;

 if(!(device = COMM_ParseStopBits(device, &lpdcb->StopBits)))
  return FALSE;


 while(*device == ' ') device++;
 if(*device == ',')
 {
  device++;
  while(*device == ' ') device++;
  if(*device) last = toupperW(*device++);
  while(*device == ' ') device++;
 }



 switch(last)
 {
 case 0:
  lpdcb->fInX = FALSE;
  lpdcb->fOutX = FALSE;
  lpdcb->fOutxCtsFlow = FALSE;
  lpdcb->fOutxDsrFlow = FALSE;
  lpdcb->fDtrControl = DTR_CONTROL_ENABLE;
  lpdcb->fRtsControl = RTS_CONTROL_ENABLE;
  break;
 case 'X':
  lpdcb->fInX = TRUE;
  lpdcb->fOutX = TRUE;
  lpdcb->fOutxCtsFlow = FALSE;
  lpdcb->fOutxDsrFlow = FALSE;
  lpdcb->fDtrControl = DTR_CONTROL_ENABLE;
  lpdcb->fRtsControl = RTS_CONTROL_ENABLE;
  break;
 case 'P':
  lpdcb->fInX = FALSE;
  lpdcb->fOutX = FALSE;
  lpdcb->fOutxCtsFlow = TRUE;
  lpdcb->fOutxDsrFlow = TRUE;
  lpdcb->fDtrControl = DTR_CONTROL_HANDSHAKE;
  lpdcb->fRtsControl = RTS_CONTROL_HANDSHAKE;
  break;
 default:
  return FALSE;
 }


 if(*device) return FALSE;

 return TRUE;
}
