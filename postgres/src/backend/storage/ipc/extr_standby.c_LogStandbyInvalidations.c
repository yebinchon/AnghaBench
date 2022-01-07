
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xlrec ;
struct TYPE_3__ {int relcacheInitFileInval; int nmsgs; int tsId; int dbId; } ;
typedef TYPE_1__ xl_invalidations ;
typedef int SharedInvalidationMessage ;


 int MinSizeOfInvalidations ;
 int MyDatabaseId ;
 int MyDatabaseTableSpace ;
 int RM_STANDBY_ID ;
 int XLOG_INVALIDATIONS ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int memset (TYPE_1__*,int ,int) ;

void
LogStandbyInvalidations(int nmsgs, SharedInvalidationMessage *msgs,
      bool relcacheInitFileInval)
{
 xl_invalidations xlrec;


 memset(&xlrec, 0, sizeof(xlrec));
 xlrec.dbId = MyDatabaseId;
 xlrec.tsId = MyDatabaseTableSpace;
 xlrec.relcacheInitFileInval = relcacheInitFileInval;
 xlrec.nmsgs = nmsgs;


 XLogBeginInsert();
 XLogRegisterData((char *) (&xlrec), MinSizeOfInvalidations);
 XLogRegisterData((char *) msgs,
      nmsgs * sizeof(SharedInvalidationMessage));
 XLogInsert(RM_STANDBY_ID, XLOG_INVALIDATIONS);
}
