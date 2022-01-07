
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Z; int Y; int X; } ;
typedef TYPE_1__ ge_p3 ;
struct TYPE_6__ {int Z; int Y; int X; } ;
typedef TYPE_2__ ge_p2 ;


 int fe_copy (int ,int ) ;

__attribute__((used)) static void ge_p3_to_p2(ge_p2 *r, const ge_p3 *p)
{
    fe_copy(r->X, p->X);
    fe_copy(r->Y, p->Y);
    fe_copy(r->Z, p->Z);
}
