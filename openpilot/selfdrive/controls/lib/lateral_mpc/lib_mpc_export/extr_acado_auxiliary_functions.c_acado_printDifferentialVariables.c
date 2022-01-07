
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* x; } ;


 int ACADO_N ;
 int ACADO_NX ;
 TYPE_1__ acadoVariables ;
 int printf (char*,...) ;

void acado_printDifferentialVariables( )
{
 int i, j;
 printf("\nDifferential variables:\n[\n");
 for (i = 0; i < ACADO_N + 1; ++i)
 {
  for (j = 0; j < ACADO_NX; ++j)
   printf("\t%e", acadoVariables.x[i * ACADO_NX + j]);
  printf("\n");
 }
 printf("]\n\n");
}
