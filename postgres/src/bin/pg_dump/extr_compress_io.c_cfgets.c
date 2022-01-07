
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uncompressedfp; scalar_t__ compressedfp; } ;
typedef TYPE_1__ cfp ;


 char* fgets (char*,int,int ) ;
 char* gzgets (scalar_t__,char*,int) ;

char *
cfgets(cfp *fp, char *buf, int len)
{





  return fgets(buf, len, fp->uncompressedfp);
}
