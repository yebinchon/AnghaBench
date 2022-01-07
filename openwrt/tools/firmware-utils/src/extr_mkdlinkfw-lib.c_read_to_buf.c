
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int file_name; int file_size; } ;
typedef int FILE ;


 int ERRS (char*,int ) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (int ,char*) ;
 size_t fread (char*,int ,int,int *) ;

int read_to_buf(const struct file_info *fdata, char *buf)
{
 FILE *f;
 int ret = EXIT_FAILURE;
 size_t read;

 f = fopen(fdata->file_name, "r");
 if (f == ((void*)0)) {
  ERRS("could not open \"%s\" for reading", fdata->file_name);
  goto out;
 }

 read = fread(buf, fdata->file_size, 1, f);
 if (ferror(f) || read != 1) {
  ERRS("unable to read from file \"%s\"", fdata->file_name);
  goto out_close;
 }

 ret = EXIT_SUCCESS;

 out_close:
 fclose(f);
 out:
 return ret;
}
