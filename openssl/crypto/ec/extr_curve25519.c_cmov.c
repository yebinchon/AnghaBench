
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int xy2d; int yminusx; int yplusx; } ;
typedef TYPE_1__ ge_precomp ;


 int fe_cmov (int ,int ,int ) ;

__attribute__((used)) static void cmov(ge_precomp *t, const ge_precomp *u, uint8_t b)
{
    fe_cmov(t->yplusx, u->yplusx, b);
    fe_cmov(t->yminusx, u->yminusx, b);
    fe_cmov(t->xy2d, u->xy2d, b);
}
