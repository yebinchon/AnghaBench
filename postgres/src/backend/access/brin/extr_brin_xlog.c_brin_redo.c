
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int XLogReaderState ;


 int PANIC ;



 int XLOG_BRIN_OPMASK ;



 int XLR_INFO_MASK ;
 int XLogRecGetInfo (int *) ;
 int brin_xlog_createidx (int *) ;
 int brin_xlog_desummarize_page (int *) ;
 int brin_xlog_insert (int *) ;
 int brin_xlog_revmap_extend (int *) ;
 int brin_xlog_samepage_update (int *) ;
 int brin_xlog_update (int *) ;
 int elog (int ,char*,int) ;

void
brin_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 switch (info & XLOG_BRIN_OPMASK)
 {
  case 133:
   brin_xlog_createidx(record);
   break;
  case 131:
   brin_xlog_insert(record);
   break;
  case 128:
   brin_xlog_update(record);
   break;
  case 129:
   brin_xlog_samepage_update(record);
   break;
  case 130:
   brin_xlog_revmap_extend(record);
   break;
  case 132:
   brin_xlog_desummarize_page(record);
   break;
  default:
   elog(PANIC, "brin_redo: unknown op code %u", info);
 }
}
