
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double TWO_PI ;

__attribute__((used)) static double
degtorad(double degrees)
{
 return (degrees / 360.0) * TWO_PI;
}
