
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct Ziphuft* t; } ;
struct Ziphuft {TYPE_1__ v; } ;
struct TYPE_5__ {int (* free ) (struct Ziphuft*) ;} ;
typedef TYPE_2__ FDI_Int ;


 int stub1 (struct Ziphuft*) ;

__attribute__((used)) static void fdi_Ziphuft_free(FDI_Int *fdi, struct Ziphuft *t)
{
  register struct Ziphuft *p, *q;


  p = t;
  while (p != ((void*)0))
  {
    q = (--p)->v.t;
    fdi->free(p);
    p = q;
  }
}
