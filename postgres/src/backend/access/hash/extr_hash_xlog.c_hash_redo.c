
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int XLogReaderState ;


 int PANIC ;
 int XLR_INFO_MASK ;
 int XLogRecGetInfo (int *) ;
 int elog (int ,char*,int) ;
 int hash_xlog_add_ovfl_page (int *) ;
 int hash_xlog_delete (int *) ;
 int hash_xlog_init_bitmap_page (int *) ;
 int hash_xlog_init_meta_page (int *) ;
 int hash_xlog_insert (int *) ;
 int hash_xlog_move_page_contents (int *) ;
 int hash_xlog_split_allocate_page (int *) ;
 int hash_xlog_split_cleanup (int *) ;
 int hash_xlog_split_complete (int *) ;
 int hash_xlog_split_page (int *) ;
 int hash_xlog_squeeze_page (int *) ;
 int hash_xlog_update_meta_page (int *) ;
 int hash_xlog_vacuum_one_page (int *) ;

void
hash_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 switch (info)
 {
  case 137:
   hash_xlog_init_meta_page(record);
   break;
  case 138:
   hash_xlog_init_bitmap_page(record);
   break;
  case 136:
   hash_xlog_insert(record);
   break;
  case 140:
   hash_xlog_add_ovfl_page(record);
   break;
  case 134:
   hash_xlog_split_allocate_page(record);
   break;
  case 131:
   hash_xlog_split_page(record);
   break;
  case 132:
   hash_xlog_split_complete(record);
   break;
  case 135:
   hash_xlog_move_page_contents(record);
   break;
  case 130:
   hash_xlog_squeeze_page(record);
   break;
  case 139:
   hash_xlog_delete(record);
   break;
  case 133:
   hash_xlog_split_cleanup(record);
   break;
  case 129:
   hash_xlog_update_meta_page(record);
   break;
  case 128:
   hash_xlog_vacuum_one_page(record);
   break;
  default:
   elog(PANIC, "hash_redo: unknown op code %u", info);
 }
}
