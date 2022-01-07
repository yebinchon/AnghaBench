
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relNode; int dbNode; int spcNode; } ;
struct TYPE_4__ {TYPE_1__ node; } ;
typedef TYPE_2__ xl_seq_rec ;
typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;
typedef int StringInfo ;


 scalar_t__ XLOG_SEQ_LOG ;
 scalar_t__ XLR_INFO_MASK ;
 char* XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int appendStringInfo (int ,char*,int ,int ,int ) ;

void
seq_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;
 xl_seq_rec *xlrec = (xl_seq_rec *) rec;

 if (info == XLOG_SEQ_LOG)
  appendStringInfo(buf, "rel %u/%u/%u",
       xlrec->node.spcNode, xlrec->node.dbNode,
       xlrec->node.relNode);
}
