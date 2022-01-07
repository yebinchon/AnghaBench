
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int max_block_id; TYPE_1__* blocks; scalar_t__ main_data_len; int * decoded_record; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_4__ {int in_use; int has_image; int has_data; int apply_image; } ;



__attribute__((used)) static void
ResetDecoder(XLogReaderState *state)
{
 int block_id;

 state->decoded_record = ((void*)0);

 state->main_data_len = 0;

 for (block_id = 0; block_id <= state->max_block_id; block_id++)
 {
  state->blocks[block_id].in_use = 0;
  state->blocks[block_id].has_image = 0;
  state->blocks[block_id].has_data = 0;
  state->blocks[block_id].apply_image = 0;
 }
 state->max_block_id = -1;
}
