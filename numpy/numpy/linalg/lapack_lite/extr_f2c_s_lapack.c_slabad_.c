
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;


 float r_lg10 (int *) ;
 int sqrt (int ) ;

int slabad_(real *small, real *large)
{
    if (r_lg10(large) > 2e3f) {
 *small = sqrt(*small);
 *large = sqrt(*large);
    }

    return 0;



}
