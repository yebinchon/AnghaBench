
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int XLogReaderState ;


 int PANIC ;
 int XLR_INFO_MASK ;
 int XLogRecGetInfo (int *) ;
 int _bt_restore_meta (int *,int ) ;
 int btree_xlog_delete (int *) ;
 int btree_xlog_insert (int,int,int *) ;
 int btree_xlog_mark_page_halfdead (int,int *) ;
 int btree_xlog_newroot (int *) ;
 int btree_xlog_reuse_page (int *) ;
 int btree_xlog_split (int,int *) ;
 int btree_xlog_unlink_page (int,int *) ;
 int btree_xlog_vacuum (int *) ;
 int elog (int ,char*,int) ;

void
btree_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 switch (info)
 {
  case 139:
   btree_xlog_insert(1, 0, record);
   break;
  case 137:
   btree_xlog_insert(0, 0, record);
   break;
  case 138:
   btree_xlog_insert(0, 1, record);
   break;
  case 132:
   btree_xlog_split(1, record);
   break;
  case 131:
   btree_xlog_split(0, record);
   break;
  case 128:
   btree_xlog_vacuum(record);
   break;
  case 140:
   btree_xlog_delete(record);
   break;
  case 136:
   btree_xlog_mark_page_halfdead(info, record);
   break;
  case 130:
  case 129:
   btree_xlog_unlink_page(info, record);
   break;
  case 134:
   btree_xlog_newroot(record);
   break;
  case 133:
   btree_xlog_reuse_page(record);
   break;
  case 135:
   _bt_restore_meta(record, 0);
   break;
  default:
   elog(PANIC, "btree_redo: unknown op code %u", info);
 }
}
