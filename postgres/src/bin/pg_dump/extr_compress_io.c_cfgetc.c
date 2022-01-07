
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uncompressedfp; scalar_t__ compressedfp; } ;
typedef TYPE_1__ cfp ;


 int EOF ;
 int READ_ERROR_EXIT (int ) ;
 int errno ;
 int fatal (char*,...) ;
 int fgetc (int ) ;
 int gzeof (scalar_t__) ;
 int gzgetc (scalar_t__) ;
 int strerror (int ) ;

int
cfgetc(cfp *fp)
{
 int ret;
 {
  ret = fgetc(fp->uncompressedfp);
  if (ret == EOF)
   READ_ERROR_EXIT(fp->uncompressedfp);
 }

 return ret;
}
