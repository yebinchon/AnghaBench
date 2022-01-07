
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8 ;
struct TYPE_4__ {TYPE_2__* blocks; } ;
typedef TYPE_1__ XLogReaderState ;
struct TYPE_5__ {char* data; int data_len; int has_data; int in_use; } ;
typedef int Size ;
typedef TYPE_2__ DecodedBkpBlock ;



char *
XLogRecGetBlockData(XLogReaderState *record, uint8 block_id, Size *len)
{
 DecodedBkpBlock *bkpb;

 if (!record->blocks[block_id].in_use)
  return ((void*)0);

 bkpb = &record->blocks[block_id];

 if (!bkpb->has_data)
 {
  if (len)
   *len = 0;
  return ((void*)0);
 }
 else
 {
  if (len)
   *len = bkpb->data_len;
  return bkpb->data;
 }
}
