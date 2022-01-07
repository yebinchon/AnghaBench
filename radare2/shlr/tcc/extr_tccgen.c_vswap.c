
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SValue ;


 int * vtop ;

void vswap(void) {
 SValue tmp;



 tmp = vtop[0];
 vtop[0] = vtop[-1];
 vtop[-1] = tmp;





}
