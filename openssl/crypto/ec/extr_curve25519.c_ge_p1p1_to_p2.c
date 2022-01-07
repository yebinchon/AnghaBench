
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Z; int Y; int X; } ;
typedef TYPE_1__ ge_p2 ;
struct TYPE_6__ {int T; int Z; int Y; int X; } ;
typedef TYPE_2__ ge_p1p1 ;


 int fe_mul (int ,int ,int ) ;

__attribute__((used)) static void ge_p1p1_to_p2(ge_p2 *r, const ge_p1p1 *p)
{
    fe_mul(r->X, p->X, p->T);
    fe_mul(r->Y, p->Y, p->Z);
    fe_mul(r->Z, p->Z, p->T);
}
