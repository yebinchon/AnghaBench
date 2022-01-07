
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_desc {size_t file_size; int * file_name; } ;
struct csum_state {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int ERRS (char*,int *) ;
 int ERR_FATAL ;
 int FILE_BUF_LEN ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (int *,char*) ;
 int fread (char*,size_t,int,int *) ;
 int write_out_data (int *,char*,size_t,struct csum_state*) ;

int
image_writeout_file(FILE *outfile, struct image_desc *desc,
   struct csum_state *css)
{
 char buf[FILE_BUF_LEN];
 size_t buflen = sizeof(buf);
 FILE *f;
 size_t len;
 int res;

 if (desc->file_name == ((void*)0))
  return 0;

 if (desc->file_size == 0)
  return 0;

 errno = 0;
 f = fopen(desc->file_name,"r");
 if (errno) {
  ERRS("unable to open file: %s", desc->file_name);
  return ERR_FATAL;
 }

 len = desc->file_size;
 while (len > 0) {
  if (len < buflen)
   buflen = len;


  errno = 0;
  fread(buf, buflen, 1, f);
  if (errno != 0) {
   ERRS("unable to read from file: %s", desc->file_name);
   res = ERR_FATAL;
   break;
  }

  res = write_out_data(outfile, buf, buflen, css);
  if (res)
   break;

  len -= buflen;
 }

 fclose(f);
 return res;
}
