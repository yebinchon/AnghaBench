
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uncompressedfp; scalar_t__ compressedfp; } ;
typedef TYPE_1__ cfp ;


 int feof (int ) ;
 int gzeof (scalar_t__) ;

int
cfeof(cfp *fp)
{





  return feof(fp->uncompressedfp);
}
