
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {unsigned int ndx; TYPE_1__** block; } ;
struct TYPE_3__ {int * byte; } ;


 unsigned int DICTIONARY_WINDOW ;
 unsigned int WRITE_BLOCKSIZE ;
 int flash_error (char*) ;
 TYPE_2__* out ;

__attribute__((used)) static uint8_t recall_byte (unsigned offset) {
  if(offset > DICTIONARY_WINDOW || offset >= out->ndx)
    flash_error("invalid dictionary offset on inflate");

  unsigned n = out->ndx - offset;
  unsigned pos = n % WRITE_BLOCKSIZE;
  unsigned blockNo = out->ndx / WRITE_BLOCKSIZE - n / WRITE_BLOCKSIZE;
  return out->block[blockNo]->byte[pos];
}
