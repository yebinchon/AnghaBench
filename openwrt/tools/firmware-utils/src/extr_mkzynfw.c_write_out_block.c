
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_block {scalar_t__ file_size; int * file_name; } ;
struct csum_state {int dummy; } ;
typedef int FILE ;


 int write_out_file (int *,int *,scalar_t__,struct csum_state*) ;

int
write_out_block(FILE *outfile, struct fw_block *block, struct csum_state *css)
{
 int res;

 if (block == ((void*)0))
  return 0;

 if (block->file_name == ((void*)0))
  return 0;

 if (block->file_size == 0)
  return 0;

 res = write_out_file(outfile, block->file_name,
   block->file_size, css);
 return res;
}
