
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t pos; int nFH; int * zFH; } ;
typedef TYPE_1__ TAR_MEMBER ;


 size_t GZWRITE (void const*,int,size_t,int *) ;
 size_t fwrite (void const*,int,size_t,int ) ;

__attribute__((used)) static size_t
tarWrite(const void *buf, size_t len, TAR_MEMBER *th)
{
 size_t res;

 if (th->zFH != ((void*)0))
  res = GZWRITE(buf, 1, len, th->zFH);
 else
  res = fwrite(buf, 1, len, th->nFH);

 th->pos += res;
 return res;
}
