
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csys_block {size_t file_size; int css; int * file_name; } ;
typedef int buf ;
typedef int FILE ;


 int ERRS (char*,int *) ;
 int ERR_FATAL ;
 int FILE_BUF_LEN ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (int *,char*) ;
 int fread (char*,size_t,int,int *) ;
 int write_out_data (int *,char*,size_t,int ) ;

int
block_writeout_file(FILE *outfile, struct csys_block *block)
{
 char buf[FILE_BUF_LEN];
 size_t buflen = sizeof(buf);
 FILE *f;
 size_t len;
 int res;

 if (block->file_name == ((void*)0))
  return 0;

 if (block->file_size == 0)
  return 0;

 errno = 0;
 f = fopen(block->file_name,"r");
 if (errno) {
  ERRS("unable to open file: %s", block->file_name);
  return ERR_FATAL;
 }

 len = block->file_size;
 while (len > 0) {
  if (len < buflen)
   buflen = len;


  errno = 0;
  fread(buf, buflen, 1, f);
  if (errno != 0) {
   ERRS("unable to read from file: %s", block->file_name);
   res = ERR_FATAL;
   break;
  }

  res = write_out_data(outfile, buf, buflen, block->css);
  if (res)
   break;

  len -= buflen;
 }

 fclose(f);
 return res;
}
