
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {size_t const argc; } ;


 int ASSERT (int) ;
 int adjust_power_of_2 (size_t const) ;
 int argv_extend (struct argv*,int ) ;

__attribute__((used)) static void
argv_grow(struct argv *a, const size_t add)
{
    const size_t newargc = a->argc + add + 1;
    ASSERT(newargc > a->argc);
    argv_extend(a, adjust_power_of_2(newargc));
}
