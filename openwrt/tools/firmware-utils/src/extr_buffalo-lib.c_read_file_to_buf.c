
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (void*,int ,int,int *) ;

int read_file_to_buf(char *name, void *buf, ssize_t buflen)
{
 FILE *f;
 size_t done;
 int ret = -1;

 f = fopen(name, "r");
 if (f == ((void*)0))
  goto out;

 errno = 0;
 done = fread(buf, buflen, 1, f);
 if (done != 1)
  goto close;

 ret = 0;

close:
 fclose(f);
out:
 return ret;
}
