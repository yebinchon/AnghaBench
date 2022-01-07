
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* u; } ;


 int ACADO_N ;
 int ACADO_NU ;
 TYPE_1__ acadoVariables ;
 int printf (char*,...) ;

void acado_printControlVariables( )
{
 int i, j;
 printf("\nControl variables:\n[\n");
 for (i = 0; i < ACADO_N; ++i)
 {
  for (j = 0; j < ACADO_NU; ++j)
   printf("\t%e", acadoVariables.u[i * ACADO_NU + j]);
  printf("\n");
 }
 printf("]\n\n");
}
