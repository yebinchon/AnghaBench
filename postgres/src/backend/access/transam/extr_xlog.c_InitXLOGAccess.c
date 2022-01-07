
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ forcePageWrites; scalar_t__ fullPageWrites; } ;
typedef TYPE_1__ XLogCtlInsert ;
struct TYPE_6__ {int xlog_seg_size; } ;
struct TYPE_5__ {scalar_t__ ThisTimeLineID; TYPE_1__ Insert; } ;


 int Assert (int) ;
 TYPE_3__* ControlFile ;
 int GetRedoRecPtr () ;
 int InitXLogInsert () ;
 scalar_t__ IsBootstrapProcessingMode () ;
 scalar_t__ ThisTimeLineID ;
 TYPE_2__* XLogCtl ;
 int doPageWrites ;
 int wal_segment_size ;

void
InitXLOGAccess(void)
{
 XLogCtlInsert *Insert = &XLogCtl->Insert;


 ThisTimeLineID = XLogCtl->ThisTimeLineID;
 Assert(ThisTimeLineID != 0 || IsBootstrapProcessingMode());


 wal_segment_size = ControlFile->xlog_seg_size;


 (void) GetRedoRecPtr();

 doPageWrites = (Insert->fullPageWrites || Insert->forcePageWrites);


 InitXLogInsert();
}
