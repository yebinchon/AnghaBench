
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hCard; } ;
typedef TYPE_1__* PKULL_M_ACR_COMM ;
typedef scalar_t__ LONG ;


 int PRINT_ERROR (char*,scalar_t__) ;
 int SCARD_LEAVE_CARD ;
 scalar_t__ SCARD_S_SUCCESS ;
 scalar_t__ SCardDisconnect (scalar_t__,int ) ;

void kull_m_acr_finish(PKULL_M_ACR_COMM comm)
{
 LONG scStatus;
 if(comm->hCard)
 {
  scStatus = SCardDisconnect(comm->hCard, SCARD_LEAVE_CARD);
  if(scStatus == SCARD_S_SUCCESS)
   comm->hCard = 0;
  else PRINT_ERROR(L"SCardDisconnect: 0x%08x\n", scStatus);
 }
}
