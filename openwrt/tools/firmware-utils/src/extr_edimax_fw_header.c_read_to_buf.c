
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ERRS (char*,char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;

__attribute__((used)) static int read_to_buf(char *name, char *buf, int buflen)
{
 FILE *f;
 int ret = EXIT_FAILURE;

 f = fopen(name, "r");
 if (f == ((void*)0)) {
  ERRS("could not open \"%s\" for reading", name);
  goto out;
 }

 errno = 0;
 fread(buf, buflen, 1, f);
 if (errno != 0) {
  ERRS("unable to read from file \"%s\"", name);
  goto out_close;
 }

 ret = EXIT_SUCCESS;

out_close:
 fclose(f);
out:
 return ret;
}
