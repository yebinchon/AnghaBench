
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
leaps_thru_end_of_nonneg(int y)
{
 return y / 4 - y / 100 + y / 400;
}
