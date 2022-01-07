
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int float8 ;
struct TYPE_2__ {int upper; } ;
typedef TYPE_1__ SplitInterval ;


 int float8_cmp_internal (int ,int ) ;

__attribute__((used)) static int
interval_cmp_upper(const void *i1, const void *i2)
{
 float8 upper1 = ((const SplitInterval *) i1)->upper,
    upper2 = ((const SplitInterval *) i2)->upper;

 return float8_cmp_internal(upper1, upper2);
}
