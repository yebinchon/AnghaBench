
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xy2d; int yminusx; int yplusx; } ;
typedef TYPE_1__ ge_precomp ;


 int fe_0 (int ) ;
 int fe_1 (int ) ;

__attribute__((used)) static void ge_precomp_0(ge_precomp *h)
{
    fe_1(h->yplusx);
    fe_1(h->yminusx);
    fe_0(h->xy2d);
}
