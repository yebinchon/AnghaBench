
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tree_walk; int tree; } ;
typedef TYPE_1__ BuildAccumulator ;


 int LeftRightWalk ;
 int rbt_begin_iterate (int ,int ,int *) ;

void
ginBeginBAScan(BuildAccumulator *accum)
{
 rbt_begin_iterate(accum->tree, LeftRightWalk, &accum->tree_walk);
}
