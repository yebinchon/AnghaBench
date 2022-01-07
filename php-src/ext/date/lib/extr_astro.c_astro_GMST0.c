
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double astro_revolution (double) ;

__attribute__((used)) static double astro_GMST0(double d)
{
 double sidtim0;





 sidtim0 = astro_revolution((180.0 + 356.0470 + 282.9404) + (0.9856002585 + 4.70935E-5) * d);
 return sidtim0;
}
