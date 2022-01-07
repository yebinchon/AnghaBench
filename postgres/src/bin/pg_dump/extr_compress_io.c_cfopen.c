
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mode_compression ;
struct TYPE_5__ {int * uncompressedfp; int * compressedfp; } ;
typedef TYPE_1__ cfp ;


 int Z_DEFAULT_COMPRESSION ;
 int fatal (char*) ;
 int * fopen (char const*,char const*) ;
 int free_keep_errno (TYPE_1__*) ;
 void* gzopen (char const*,char const*) ;
 TYPE_1__* pg_malloc (int) ;
 int snprintf (char*,int,char*,char const*,int) ;

cfp *
cfopen(const char *path, const char *mode, int compression)
{
 cfp *fp = pg_malloc(sizeof(cfp));

 if (compression != 0)
 {
  fatal("not built with zlib support");

 }
 else
 {



  fp->uncompressedfp = fopen(path, mode);
  if (fp->uncompressedfp == ((void*)0))
  {
   free_keep_errno(fp);
   fp = ((void*)0);
  }
 }

 return fp;
}
