
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int XLogReaderState ;


 int PANIC ;






 int XLOG_HEAP_OPMASK ;


 int XLR_INFO_MASK ;
 int XLogRecGetInfo (int *) ;
 int elog (int ,char*,int) ;
 int heap_xlog_confirm (int *) ;
 int heap_xlog_delete (int *) ;
 int heap_xlog_inplace (int *) ;
 int heap_xlog_insert (int *) ;
 int heap_xlog_lock (int *) ;
 int heap_xlog_update (int *,int) ;

void
heap_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;






 switch (info & XLOG_HEAP_OPMASK)
 {
  case 131:
   heap_xlog_insert(record);
   break;
  case 134:
   heap_xlog_delete(record);
   break;
  case 128:
   heap_xlog_update(record, 0);
   break;
  case 129:






   break;
  case 133:
   heap_xlog_update(record, 1);
   break;
  case 135:
   heap_xlog_confirm(record);
   break;
  case 130:
   heap_xlog_lock(record);
   break;
  case 132:
   heap_xlog_inplace(record);
   break;
  default:
   elog(PANIC, "heap_redo: unknown op code %u", info);
 }
}
