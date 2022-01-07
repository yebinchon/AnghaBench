
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
typedef int SnapBuildState ;
typedef TYPE_1__ SnapBuild ;



SnapBuildState
SnapBuildCurrentState(SnapBuild *builder)
{
 return builder->state;
}
