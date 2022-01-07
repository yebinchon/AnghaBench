
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p; } ;
typedef TYPE_1__ LSEG ;
typedef int BOX ;


 scalar_t__ box_contain_point (int *,int *) ;

__attribute__((used)) static bool
box_contain_lseg(BOX *box, LSEG *lseg)
{
 return box_contain_point(box, &lseg->p[0]) &&
  box_contain_point(box, &lseg->p[1]);
}
