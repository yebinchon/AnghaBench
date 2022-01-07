
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nbytes; scalar_t__ dbid; int tsid; int data; } ;
typedef TYPE_1__ xl_relmap_update ;
typedef int uint8 ;
typedef int newmap ;
typedef int XLogReaderState ;
typedef int RelMapFile ;


 int Assert (int) ;
 char* GetDatabasePath (scalar_t__,int ) ;
 scalar_t__ InvalidOid ;
 int PANIC ;
 int XLOG_RELMAP_UPDATE ;
 int XLR_INFO_MASK ;
 scalar_t__ XLogRecGetData (int *) ;
 int XLogRecGetInfo (int *) ;
 int XLogRecHasAnyBlockRefs (int *) ;
 int elog (int ,char*,int) ;
 int memcpy (int *,int ,int) ;
 int pfree (char*) ;
 int write_relmap_file (int,int *,int,int,int,scalar_t__,int ,char*) ;

void
relmap_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;


 Assert(!XLogRecHasAnyBlockRefs(record));

 if (info == XLOG_RELMAP_UPDATE)
 {
  xl_relmap_update *xlrec = (xl_relmap_update *) XLogRecGetData(record);
  RelMapFile newmap;
  char *dbpath;

  if (xlrec->nbytes != sizeof(RelMapFile))
   elog(PANIC, "relmap_redo: wrong size %u in relmap update record",
     xlrec->nbytes);
  memcpy(&newmap, xlrec->data, sizeof(newmap));


  dbpath = GetDatabasePath(xlrec->dbid, xlrec->tsid);
  write_relmap_file((xlrec->dbid == InvalidOid), &newmap,
        0, 1, 0,
        xlrec->dbid, xlrec->tsid, dbpath);

  pfree(dbpath);
 }
 else
  elog(PANIC, "relmap_redo: unknown op code %u", info);
}
