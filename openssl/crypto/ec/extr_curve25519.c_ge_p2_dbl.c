
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Y; int X; int Z; } ;
typedef TYPE_1__ ge_p2 ;
struct TYPE_6__ {int Z; int T; int Y; int X; } ;
typedef TYPE_2__ ge_p1p1 ;
typedef int fe ;


 int fe_add (int ,int ,int ) ;
 int fe_sq (int ,int ) ;
 int fe_sq2 (int ,int ) ;
 int fe_sub (int ,int ,int ) ;

__attribute__((used)) static void ge_p2_dbl(ge_p1p1 *r, const ge_p2 *p)
{
    fe t0;

    fe_sq(r->X, p->X);
    fe_sq(r->Z, p->Y);
    fe_sq2(r->T, p->Z);
    fe_add(r->Y, p->X, p->Y);
    fe_sq(t0, r->Y);
    fe_add(r->Y, r->Z, r->X);
    fe_sub(r->Z, r->Z, r->X);
    fe_sub(r->X, t0, r->Y);
    fe_sub(r->T, r->T, r->Z);
}
