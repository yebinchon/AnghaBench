
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int cmv_waiting; } ;
typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 int DSL_DEV_MEI_ERR_FAILURE ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 TYPE_1__* DSL_DEV_PRIVATE (int *) ;
 int IFX_MEI_DMAWrite (int *,int ,int*,int) ;
 int IFX_MEI_EMSG (char*,int) ;
 int IFX_MEI_LongWordReadOffset (int *,int,int*) ;
 int IFX_MEI_LongWordWriteOffset (int *,int,int) ;
 int MEI_TO_ARC_MAILBOX ;
 int MEI_TO_ARC_MAILBOXR ;
 int MEI_TO_ARC_MSGAV ;
 scalar_t__ ME_ME2ARC_INT ;
 int WHILE_DELAY ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_MailboxWrite (DSL_DEV_Device_t * pDev, u16 * msgsrcbuffer,
       u16 msgsize)
{
 int i;
 u32 arc_mailbox_status = 0x0;
 u32 temp = 0;
 DSL_DEV_MeiError_t meiMailboxError = DSL_DEV_MEI_ERR_SUCCESS;


 meiMailboxError =
  IFX_MEI_DMAWrite (pDev, MEI_TO_ARC_MAILBOX, (u32 *) msgsrcbuffer, msgsize / 2);
 meiMailboxError =
  IFX_MEI_DMAWrite (pDev, MEI_TO_ARC_MAILBOXR, (u32 *) (&temp), 1);


 DSL_DEV_PRIVATE(pDev)->cmv_waiting = 1;
 IFX_MEI_LongWordWriteOffset (pDev, (u32) ME_ME2ARC_INT, MEI_TO_ARC_MSGAV);

 i = 0;
 while (i < WHILE_DELAY) {
  IFX_MEI_LongWordReadOffset (pDev, (u32) ME_ME2ARC_INT, &arc_mailbox_status);
  if ((arc_mailbox_status & MEI_TO_ARC_MSGAV) != MEI_TO_ARC_MSGAV)
   break;
  i++;
  if (i == WHILE_DELAY) {
   IFX_MEI_EMSG (">>> Timeout waiting for ARC to clear MEI_TO_ARC_MSGAV!!!"
         " MEI_TO_ARC message size = %d DWORDs <<<\n", msgsize/2);
   meiMailboxError = DSL_DEV_MEI_ERR_FAILURE;
  }
 }

 return meiMailboxError;
}
