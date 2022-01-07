
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int params ;


 int POW3 (double) ;

__attribute__((used)) static double bicubic(params *p, double x)
{
    return (1.0/6.0) * ( POW3(x + 2)
                        - 4 * POW3(x + 1)
                        + 6 * POW3(x)
                        - 4 * POW3(x - 1));
}
