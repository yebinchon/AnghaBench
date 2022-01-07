
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acado_condenseFdb () ;
 int acado_expand () ;
 int acado_solve () ;

int acado_feedbackStep( )
{
int tmp;

acado_condenseFdb( );

tmp = acado_solve( );

acado_expand( );
return tmp;
}
