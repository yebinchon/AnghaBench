
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int leaps_thru_end_of_nonneg (int const) ;

__attribute__((used)) static int
leaps_thru_end_of(const int y)
{
 return (y < 0
   ? -1 - leaps_thru_end_of_nonneg(-1 - y)
   : leaps_thru_end_of_nonneg(y));
}
