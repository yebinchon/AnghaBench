
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int XLogRecData ;
struct TYPE_2__ {int in_use; } ;


 int begininsert_called ;
 scalar_t__ curinsert_flags ;
 int mainrdata_head ;
 int * mainrdata_last ;
 scalar_t__ mainrdata_len ;
 int max_registered_block_id ;
 scalar_t__ num_rdatas ;
 TYPE_1__* registered_buffers ;

void
XLogResetInsertion(void)
{
 int i;

 for (i = 0; i < max_registered_block_id; i++)
  registered_buffers[i].in_use = 0;

 num_rdatas = 0;
 max_registered_block_id = 0;
 mainrdata_len = 0;
 mainrdata_last = (XLogRecData *) &mainrdata_head;
 curinsert_flags = 0;
 begininsert_called = 0;
}
