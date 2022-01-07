
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csys_block {int size_csum; struct csum_state* css; int size_avail; int file_size; int file_name; } ;
struct csum_state {int dummy; } ;
typedef int FILE ;


 int DBG (int,char*,int ,int ,int ) ;
 int block_writeout_csum (int *,struct csys_block*) ;
 int block_writeout_data (int *,struct csys_block*) ;
 int block_writeout_hdr (int *,struct csys_block*) ;
 int csum_init (struct csum_state*,int ) ;

int
block_writeout(FILE *outfile, struct csys_block *block)
{
 int res;
 struct csum_state css;

 res = 0;

 if (block == ((void*)0))
  return res;

 block->css = ((void*)0);

 DBG(2, "writing block, file=%s, file_size=%d, space=%d",
  block->file_name, block->file_size, block->size_avail);
 res = block_writeout_hdr(outfile, block);
 if (res)
  return res;

 if (block->size_csum != 0) {
  block->css = &css;
  csum_init(&css, block->size_csum);
 }

 res = block_writeout_data(outfile, block);
 if (res)
  return res;

 res = block_writeout_csum(outfile, block);
 if (res)
  return res;

 return res;
}
