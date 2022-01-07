
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint ;
struct TYPE_4__ {scalar_t__ ndx; TYPE_1__** block; } ;
struct TYPE_3__ {int * byte; } ;


 scalar_t__ DICTIONARY_WINDOW ;
 int UZLIB_DICT_ERROR ;
 int UZLIB_THROW (int ) ;
 scalar_t__ WRITE_BLOCKSIZE ;
 TYPE_2__* out ;

uint8_t recall_byte (uint offset) {
  if(offset > DICTIONARY_WINDOW || offset >= out->ndx)
    UZLIB_THROW(UZLIB_DICT_ERROR);

  uint n = out->ndx - offset;
  uint pos = n % WRITE_BLOCKSIZE;
  uint blockNo = out->ndx / WRITE_BLOCKSIZE - n / WRITE_BLOCKSIZE;
  return out->block[blockNo]->byte[pos];
}
