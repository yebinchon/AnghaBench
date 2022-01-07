
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uncompressedfp; scalar_t__ compressedfp; } ;
typedef TYPE_1__ cfp ;


 int fwrite (void const*,int,int,int ) ;
 int gzwrite (scalar_t__,void const*,int) ;

int
cfwrite(const void *ptr, int size, cfp *fp)
{





  return fwrite(ptr, 1, size, fp->uncompressedfp);
}
