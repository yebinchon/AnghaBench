
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int float8 ;
struct TYPE_2__ {int delta; } ;
typedef TYPE_1__ CommonEntry ;


 int float8_cmp_internal (int ,int ) ;

__attribute__((used)) static int
common_entry_cmp(const void *i1, const void *i2)
{
 float8 delta1 = ((const CommonEntry *) i1)->delta,
    delta2 = ((const CommonEntry *) i2)->delta;

 return float8_cmp_internal(delta1, delta2);
}
