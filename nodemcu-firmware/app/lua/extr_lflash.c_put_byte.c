
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int * byte; } ;
typedef TYPE_1__ outBlock ;
struct TYPE_6__ {int ndx; int len; TYPE_1__** block; int (* fullBlkCB ) () ;} ;


 int WRITE_BLOCKS ;
 int WRITE_BLOCKSIZE ;
 int memmove (TYPE_1__**,TYPE_1__**,int) ;
 TYPE_2__* out ;
 int stub1 () ;

__attribute__((used)) static void put_byte (uint8_t value) {
  int offset = out->ndx % WRITE_BLOCKSIZE;

  out->block[0]->byte[offset++] = value;
  out->ndx++;

  if (offset == WRITE_BLOCKSIZE || out->ndx == out->len) {
    if (out->fullBlkCB)
      out->fullBlkCB();

    outBlock *nextBlock = out->block[WRITE_BLOCKS - 1];
    memmove(out->block+1, out->block, (WRITE_BLOCKS-1)*sizeof(void*));
    out->block[0] = nextBlock ;
  }
}
