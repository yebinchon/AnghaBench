
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct Ziphuft* t; } ;
struct Ziphuft {TYPE_1__ v; } ;
typedef int HFDI ;


 int PFDI_FREE (int ,struct Ziphuft*) ;

__attribute__((used)) static void fdi_Ziphuft_free(HFDI hfdi, struct Ziphuft *t)
{
  register struct Ziphuft *p, *q;


  p = t;
  while (p != ((void*)0))
  {
    q = (--p)->v.t;
    PFDI_FREE(hfdi, p);
    p = q;
  }
}
