
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ndx; scalar_t__ written; scalar_t__ len; int * fullBlkCB; int fout; int crc; int * block; } ;


 int UZLIB_DATA_ERROR ;
 int UZLIB_THROW (int ) ;
 int WRITE_BLOCKSIZE ;
 int fclose (int ) ;
 int fwrite (int ,int,int,int ) ;
 TYPE_1__* out ;
 int uzlib_crc32 (int ,int,int ) ;

int processOutRec (void) {
  int len = (out->ndx % WRITE_BLOCKSIZE) ? out->ndx % WRITE_BLOCKSIZE :
                                           WRITE_BLOCKSIZE;
  if (fwrite(out->block[0], 1, len, out->fout) != len)
    UZLIB_THROW(UZLIB_DATA_ERROR);

  out->crc = uzlib_crc32(out->block[0], len, out->crc);

  out->written += len;
  if (out->written == out->len) {
    fclose(out->fout);
    out->fullBlkCB = ((void*)0);
  }
  return 1;
}
