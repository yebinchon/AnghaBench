
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Interval ;


 double INTERVAL_TO_SEC (int const*) ;

__attribute__((used)) static double
intr2num(const Interval *i)
{
 return INTERVAL_TO_SEC(i);
}
