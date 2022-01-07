
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int time; int month; scalar_t__ day; } ;
typedef TYPE_1__ Interval ;
typedef int INT128 ;


 int INT64CONST (int) ;
 int USECS_PER_DAY ;
 int int128_add_int64_mul_int64 (int *,int,int) ;
 int int64_to_int128 (int) ;

__attribute__((used)) static inline INT128
interval_cmp_value(const Interval *interval)
{
 INT128 span;
 int64 dayfraction;
 int64 days;





 dayfraction = interval->time % USECS_PER_DAY;
 days = interval->time / USECS_PER_DAY;
 days += interval->month * INT64CONST(30);
 days += interval->day;


 span = int64_to_int128(dayfraction);


 int128_add_int64_mul_int64(&span, days, USECS_PER_DAY);

 return span;
}
