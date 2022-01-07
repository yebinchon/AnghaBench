
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cfp ;


 int * cfopen (char const*,char const*,int) ;
 int fatal (char*) ;
 int free_keep_errno (char*) ;
 char* psprintf (char*,char const*) ;

cfp *
cfopen_write(const char *path, const char *mode, int compression)
{
 cfp *fp;

 if (compression == 0)
  fp = cfopen(path, mode, 0);
 else
 {







  fatal("not built with zlib support");
  fp = ((void*)0);

 }
 return fp;
}
