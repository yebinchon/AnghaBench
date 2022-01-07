
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int do_fsync; int PagePrecedes; } ;
struct TYPE_5__ {int headPage; void* tailXid; void* headXid; } ;
typedef int OldSerXidControlData ;
typedef TYPE_1__* OldSerXidControl ;


 int Assert (int) ;
 void* InvalidTransactionId ;
 int IsUnderPostmaster ;
 int LWTRANCHE_OLDSERXID_BUFFERS ;
 int NUM_OLDSERXID_BUFFERS ;
 int OldSerXidLock ;
 int OldSerXidPagePrecedesLogically ;
 TYPE_3__* OldSerXidSlruCtl ;
 scalar_t__ ShmemInitStruct (char*,int,int*) ;
 int SimpleLruInit (TYPE_3__*,char*,int ,int ,int ,char*,int ) ;
 TYPE_1__* oldSerXidControl ;

__attribute__((used)) static void
OldSerXidInit(void)
{
 bool found;




 OldSerXidSlruCtl->PagePrecedes = OldSerXidPagePrecedesLogically;
 SimpleLruInit(OldSerXidSlruCtl, "oldserxid",
      NUM_OLDSERXID_BUFFERS, 0, OldSerXidLock, "pg_serial",
      LWTRANCHE_OLDSERXID_BUFFERS);

 OldSerXidSlruCtl->do_fsync = 0;




 oldSerXidControl = (OldSerXidControl)
  ShmemInitStruct("OldSerXidControlData", sizeof(OldSerXidControlData), &found);

 Assert(found == IsUnderPostmaster);
 if (!found)
 {



  oldSerXidControl->headPage = -1;
  oldSerXidControl->headXid = InvalidTransactionId;
  oldSerXidControl->tailXid = InvalidTransactionId;
 }
}
