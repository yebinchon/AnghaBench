
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Interval ;
typedef int INT128 ;


 int int128_compare (int ,int ) ;
 int interval_cmp_value (int *) ;

__attribute__((used)) static int
interval_cmp_internal(Interval *interval1, Interval *interval2)
{
 INT128 span1 = interval_cmp_value(interval1);
 INT128 span2 = interval_cmp_value(interval2);

 return int128_compare(span1, span2);
}
