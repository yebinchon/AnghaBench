
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double INV360 ;
 double floor (double) ;

__attribute__((used)) static double astro_rev180( double x )
{
 return (x - 360.0 * floor(x * INV360 + 0.5));
}
