
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortSupport ;
typedef int Datum ;


 int ApplySortComparator (int ,int,int ,int,int ) ;

int
compare_datums_simple(Datum a, Datum b, SortSupport ssup)
{
 return ApplySortComparator(a, 0, b, 0, ssup);
}
