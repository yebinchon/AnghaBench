
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int message_size; scalar_t__ transactional; } ;
typedef TYPE_1__ xl_logical_message ;
typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;
typedef int StringInfo ;


 scalar_t__ XLOG_LOGICAL_MESSAGE ;
 scalar_t__ XLR_INFO_MASK ;
 char* XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int appendStringInfo (int ,char*,char*,int ) ;

void
logicalmsg_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 if (info == XLOG_LOGICAL_MESSAGE)
 {
  xl_logical_message *xlrec = (xl_logical_message *) rec;

  appendStringInfo(buf, "%s message size %zu bytes",
       xlrec->transactional ? "transactional" : "nontransactional",
       xlrec->message_size);
 }
}
