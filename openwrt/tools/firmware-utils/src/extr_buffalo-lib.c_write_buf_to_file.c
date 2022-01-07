
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 scalar_t__ errno ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (char*,char*) ;
 size_t fwrite (void*,int ,int,int *) ;
 int unlink (char*) ;

int write_buf_to_file(char *name, void *buf, ssize_t buflen)
{
 FILE *f;
 size_t done;
 int ret = -1;

 f = fopen(name, "w");
 if (f == ((void*)0))
  goto out;

 errno = 0;
 done = fwrite(buf, buflen, 1, f);
 if (done != 1)
  goto close;

 ret = 0;

close:
 fflush(f);
 fclose(f);
 if (ret)
  unlink(name);
out:
 return ret;
}
