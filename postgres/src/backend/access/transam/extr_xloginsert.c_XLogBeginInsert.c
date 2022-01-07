
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecData ;


 int Assert (int) ;
 int ERROR ;
 int XLogInsertAllowed () ;
 int begininsert_called ;
 int elog (int ,char*) ;
 int mainrdata_head ;
 int * mainrdata_last ;
 scalar_t__ mainrdata_len ;
 scalar_t__ max_registered_block_id ;

void
XLogBeginInsert(void)
{
 Assert(max_registered_block_id == 0);
 Assert(mainrdata_last == (XLogRecData *) &mainrdata_head);
 Assert(mainrdata_len == 0);


 if (!XLogInsertAllowed())
  elog(ERROR, "cannot make new WAL entries during recovery");

 if (begininsert_called)
  elog(ERROR, "XLogBeginInsert was already called");

 begininsert_called = 1;
}
