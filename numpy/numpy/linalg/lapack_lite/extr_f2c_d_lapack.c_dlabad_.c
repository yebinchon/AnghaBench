
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int doublereal ;


 int d_lg10 (int *) ;
 int sqrt (int ) ;

int dlabad_(doublereal *small, doublereal *large)
{
    if (d_lg10(large) > 2e3) {
 *small = sqrt(*small);
 *large = sqrt(*large);
    }

    return 0;



}
