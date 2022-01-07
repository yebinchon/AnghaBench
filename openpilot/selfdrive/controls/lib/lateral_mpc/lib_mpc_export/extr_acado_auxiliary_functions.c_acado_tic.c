
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tic; } ;
typedef TYPE_1__ acado_timer ;


 int gettimeofday (int *,int ) ;

void acado_tic( acado_timer* t )
{
 gettimeofday(&t->tic, 0);
}
