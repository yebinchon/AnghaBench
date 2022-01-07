
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int remote_lsn; int force; int node_id; } ;
typedef TYPE_1__ xl_replorigin_set ;
struct TYPE_4__ {int node_id; } ;
typedef TYPE_2__ xl_replorigin_drop ;
typedef int uint8 ;
typedef int uint32 ;
typedef int XLogReaderState ;
typedef int StringInfo ;




 int XLR_INFO_MASK ;
 char* XLogRecGetData (int *) ;
 int XLogRecGetInfo (int *) ;
 int appendStringInfo (int ,char*,int ,...) ;

void
replorigin_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 switch (info)
 {
  case 128:
   {
    xl_replorigin_set *xlrec;

    xlrec = (xl_replorigin_set *) rec;

    appendStringInfo(buf, "set %u; lsn %X/%X; force: %d",
         xlrec->node_id,
         (uint32) (xlrec->remote_lsn >> 32),
         (uint32) xlrec->remote_lsn,
         xlrec->force);
    break;
   }
  case 129:
   {
    xl_replorigin_drop *xlrec;

    xlrec = (xl_replorigin_drop *) rec;

    appendStringInfo(buf, "drop %u", xlrec->node_id);
    break;
   }
 }
}
