
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct fw_block {int file_size; int * file_name; } ;


 int ERRS (char*,int *) ;
 int stat (int *,struct stat*) ;

int
block_stat_file(struct fw_block *block)
{
 struct stat st;
 int res;

 if (block->file_name == ((void*)0))
  return 0;

 res = stat(block->file_name, &st);
 if (res){
  ERRS("stat failed on %s", block->file_name);
  return res;
 }

 block->file_size = st.st_size;
 return 0;
}
