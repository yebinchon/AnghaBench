
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acado_condensePrep () ;
 int acado_evaluateObjective () ;
 int acado_modelSimulation () ;

int acado_preparationStep( )
{
int ret;

ret = acado_modelSimulation();
acado_evaluateObjective( );
acado_condensePrep( );
return ret;
}
