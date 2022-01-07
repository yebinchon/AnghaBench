
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
 int heap_xlog_clean (int *) ;
 int heap_xlog_cleanup_info (int *) ;
 int heap_xlog_freeze_page (int *) ;
 int heap_xlog_lock_updated (int *) ;
 int heap_xlog_logical_rewrite (int *) ;
 int heap_xlog_multi_insert (int *) ;
 int heap_xlog_visible (int *) ;

void
heap2_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 switch (info & XLOG_HEAP_OPMASK)
 {
  case 135:
   heap_xlog_clean(record);
   break;
  case 133:
   heap_xlog_freeze_page(record);
   break;
  case 134:
   heap_xlog_cleanup_info(record);
   break;
  case 128:
   heap_xlog_visible(record);
   break;
  case 131:
   heap_xlog_multi_insert(record);
   break;
  case 132:
   heap_xlog_lock_updated(record);
   break;
  case 130:





   break;
  case 129:
   heap_xlog_logical_rewrite(record);
   break;
  default:
   elog(PANIC, "heap2_redo: unknown op code %u", info);
 }
}
