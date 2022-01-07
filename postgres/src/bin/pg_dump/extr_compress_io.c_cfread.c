
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uncompressedfp; scalar_t__ compressedfp; } ;
typedef TYPE_1__ cfp ;


 int READ_ERROR_EXIT (int ) ;
 int Z_ERRNO ;
 int errno ;
 int fatal (char*,char const*) ;
 int feof (int ) ;
 int fread (void*,int,int,int ) ;
 int gzeof (scalar_t__) ;
 char* gzerror (scalar_t__,int*) ;
 int gzread (scalar_t__,void*,int) ;
 char const* strerror (int ) ;

int
cfread(void *ptr, int size, cfp *fp)
{
 int ret;

 if (size == 0)
  return 0;
 {
  ret = fread(ptr, 1, size, fp->uncompressedfp);
  if (ret != size && !feof(fp->uncompressedfp))
   READ_ERROR_EXIT(fp->uncompressedfp);
 }
 return ret;
}
