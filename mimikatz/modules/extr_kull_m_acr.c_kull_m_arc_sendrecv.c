
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT16 ;
struct TYPE_3__ {scalar_t__ withoutCard; scalar_t__ descr; scalar_t__ hCard; } ;
typedef TYPE_1__* PKULL_M_ACR_COMM ;
typedef scalar_t__ LONG ;
typedef scalar_t__ DWORD ;
typedef int const BYTE ;
typedef int BOOL ;


 scalar_t__ const ACR_MAX_LEN ;
 int FALSE ;
 int IOCTL_CCID_ESCAPE ;
 int PRINT_ERROR (char*,...) ;
 scalar_t__ SCARD_S_SUCCESS ;
 scalar_t__ SCardControl (scalar_t__,int ,int const*,scalar_t__ const,int const*,scalar_t__,scalar_t__*) ;
 scalar_t__ SCardTransmit (scalar_t__,int *,int const*,scalar_t__ const,int *,int const*,scalar_t__*) ;
 int kprintf (char*) ;
 int kull_m_string_wprintf_hex (int const*,scalar_t__ const,int) ;

BOOL kull_m_arc_sendrecv(PKULL_M_ACR_COMM comm, const BYTE *pbData, const UINT16 cbData, BYTE *pbResult, UINT16 *cbResult)
{
 BOOL status = FALSE;
 LONG scStatus;
 DWORD ret = *cbResult;

 if(comm->hCard)
 {
  if(cbData <= ACR_MAX_LEN)
  {
   if(comm->descr)
   {
    kprintf(L"ACR  > ");
    kull_m_string_wprintf_hex(pbData, cbData, 1);
    kprintf(L"\n");
   }
   scStatus = comm->withoutCard ?
    SCardControl(comm->hCard, IOCTL_CCID_ESCAPE, pbData, cbData, pbResult, *cbResult, &ret) :
    SCardTransmit(comm->hCard, ((void*)0), pbData, cbData, ((void*)0), pbResult, &ret);

   if(scStatus == SCARD_S_SUCCESS)
   {
    if(comm->descr)
    {
     kprintf(L"ACR  < ");
     kull_m_string_wprintf_hex(pbResult, ret, 1);
     kprintf(L"\n");
    }
    if(status = (ret <= *cbResult))
     *cbResult = (UINT16) ret;
   }
   else PRINT_ERROR(L"%s: 0x%08x\n", comm->withoutCard ? L"SCardControl" : L"SCardTransmit", scStatus);
  }
  else PRINT_ERROR(L"cbData = %hu / cbResult = %hu (max is %hu)\n", cbData, cbResult, ACR_MAX_LEN);
 }
 else PRINT_ERROR(L"No handle to Card\n");
 return status;
}
