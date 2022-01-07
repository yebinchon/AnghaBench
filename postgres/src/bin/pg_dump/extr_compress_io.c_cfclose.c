
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * uncompressedfp; int * compressedfp; } ;
typedef TYPE_1__ cfp ;


 int EBADF ;
 int EOF ;
 int errno ;
 int fclose (int *) ;
 int free_keep_errno (TYPE_1__*) ;
 int gzclose (int *) ;

int
cfclose(cfp *fp)
{
 int result;

 if (fp == ((void*)0))
 {
  errno = EBADF;
  return EOF;
 }
 {
  result = fclose(fp->uncompressedfp);
  fp->uncompressedfp = ((void*)0);
 }
 free_keep_errno(fp);

 return result;
}
