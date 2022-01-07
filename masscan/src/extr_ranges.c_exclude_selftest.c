
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {int member_0; } ;


 int lcgrand (unsigned int*) ;
 int rangelist_add_range (struct RangeList*,unsigned int,unsigned int) ;
 int rangelist_copy (struct RangeList*,struct RangeList*) ;
 int rangelist_exclude (struct RangeList*,struct RangeList*) ;
 int rangelist_exclude2 (struct RangeList*,struct RangeList*) ;
 int rangelist_is_equal (struct RangeList*,struct RangeList*) ;
 int rangelist_sort (struct RangeList*) ;

__attribute__((used)) static int
exclude_selftest(void)
{
    unsigned seed = 0;
    struct RangeList includes1 = {0};
    struct RangeList includes2 = {0};
    struct RangeList excludes = {0};
    unsigned addr = 0;
    size_t i;







    static const unsigned MAXCOUNT = 1000;







    seed = 0;
    addr = 0;
    for (i=0; i<MAXCOUNT; i++) {
        unsigned begin;
        unsigned end;

        addr += lcgrand(&seed) & 0xF;
        begin = addr;
        addr += lcgrand(&seed) & 0xF;
        end = addr;

        rangelist_add_range(&includes1, begin, end);
    }
    rangelist_sort(&includes1);




    seed = 1;
    addr = 0;
    for (i=0; i<MAXCOUNT; i++) {
        unsigned begin;
        unsigned end;

        addr += lcgrand(&seed) & 0xF;
        begin = addr;
        addr += lcgrand(&seed) & 0xF;
        end = addr;

        rangelist_add_range(&excludes, begin, end);
    }
    rangelist_sort(&excludes);




    rangelist_copy(&includes2, &includes1);
    if (!rangelist_is_equal(&includes1, &includes2))
        return 1;




    rangelist_exclude(&includes1, &excludes);
    rangelist_exclude2(&includes2, &excludes);
    if (!rangelist_is_equal(&includes1, &includes2))
        return 1;


    return 0;

}
