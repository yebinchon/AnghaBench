
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int isinf (double) ;
 int isnan (double) ;

BOOL is_finite(double n)
{
    return !isnan(n) && !isinf(n);
}
