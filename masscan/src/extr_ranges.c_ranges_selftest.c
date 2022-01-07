
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int targets ;
struct RangeList {int count; TYPE_1__* list; int member_0; } ;
struct Range {int begin; int end; } ;
struct TYPE_2__ {int begin; int end; } ;


 int ERROR () ;
 int LOG (int ,char*,int,...) ;
 int REGRESS (int) ;
 scalar_t__ exclude_selftest () ;
 int memset (struct RangeList*,int ,int) ;
 struct Range range_parse_ipv4 (char*,int ,int ) ;
 int rangelist_add_range2 (struct RangeList*,struct Range) ;
 int rangelist_parse_ports (struct RangeList*,char*,unsigned int*,int ) ;
 int rangelist_remove_all (struct RangeList*) ;
 int rangelist_remove_range2 (struct RangeList*,struct Range) ;
 int rangelist_sort (struct RangeList*) ;
 scalar_t__ regress_pick2 () ;

int
ranges_selftest(void)
{
    struct Range r;
    struct RangeList targets[1] = {{0}};

    REGRESS(regress_pick2() == 0);


    if (exclude_selftest())
        return 1;

    memset(targets, 0, sizeof(targets[0]));




    r = range_parse_ipv4("0.0.0.0/0", 0, 0);
    REGRESS(r.begin == 0 && r.end == 0xFFFFFFFF);

    r = range_parse_ipv4("0.0.0./0", 0, 0);
    REGRESS(r.begin > r.end);

    r = range_parse_ipv4("75.748.86.91", 0, 0);
    REGRESS(r.begin > r.end);

    r = range_parse_ipv4("23.75.345.200", 0, 0);
    REGRESS(r.begin > r.end);

    r = range_parse_ipv4("192.1083.0.1", 0, 0);
    REGRESS(r.begin > r.end);

    r = range_parse_ipv4("192.168.1.3", 0, 0);
    if (r.begin != 0xc0a80103 || r.end != 0xc0a80103) {
        LOG(0, "r.begin = 0x%08x r.end = 0x%08x\n", r.begin, r.end);
        LOG(0, "selftest: failed %s:%u\n", "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c", 68);;
        return 1;
    }

    r = range_parse_ipv4("10.0.0.20-10.0.0.30", 0, 0);
    if (r.begin != 0x0A000000+20 || r.end != 0x0A000000+30) {
        LOG(0, "r.begin = 0x%08x r.end = 0x%08x\n", r.begin, r.end);
        LOG(0, "selftest: failed %s:%u\n", "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c", 75);;
        return 1;
    }

    r = range_parse_ipv4("10.0.1.2/16", 0, 0);
    if (r.begin != 0x0A000000 || r.end != 0x0A00FFFF) {
        LOG(0, "r.begin = 0x%08x r.end = 0x%08x\n", r.begin, r.end);
        LOG(0, "selftest: failed %s:%u\n", "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c", 82);;
        return 1;
    }


    rangelist_add_range2(targets, range_parse_ipv4("10.0.0.0/24", 0, 0));
    rangelist_add_range2(targets, range_parse_ipv4("10.0.1.10-10.0.1.19", 0, 0));
    rangelist_add_range2(targets, range_parse_ipv4("10.0.1.20-10.0.1.30", 0, 0));
    rangelist_add_range2(targets, range_parse_ipv4("10.0.0.0-10.0.1.12", 0, 0));
    rangelist_sort(targets);

    if (targets->count != 1) {
        LOG(0, "count = %u\n", targets->count);
        LOG(0, "selftest: failed %s:%u\n", "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c", 95);;
        return 1;
    }
    if (targets->list[0].begin != 0x0a000000 || targets->list[0].end != 0x0a000100+30) {
        LOG(0, "r.begin = 0x%08x r.end = 0x%08x\n", targets->list[0].begin, targets->list[0].end);
        LOG(0, "selftest: failed %s:%u\n", "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c", 100);;
        return 1;
    }

    rangelist_remove_all(targets);




    memset(targets, 0, sizeof(targets[0]));

    rangelist_add_range2(targets, range_parse_ipv4("10.0.0.0/8", 0, 0));
    rangelist_sort(targets);


    rangelist_remove_range2(targets, range_parse_ipv4("9.255.255.255", 0, 0));
    rangelist_remove_range2(targets, range_parse_ipv4("11.0.0.0/16", 0, 0));
    rangelist_remove_range2(targets, range_parse_ipv4("192.168.0.0/16", 0, 0));
    rangelist_sort(targets);

    if (targets->count != 1
        || targets->list->begin != 0x0a000000
        || targets->list->end != 0x0aFFFFFF) {
        LOG(0, "selftest: failed %s:%u\n", "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c", 123);;
        return 1;
    }


    rangelist_remove_range2(targets, range_parse_ipv4("1.0.0.0-10.0.0.0", 0, 0));
    rangelist_remove_range2(targets, range_parse_ipv4("10.255.255.255-11.0.0.0", 0, 0));
    rangelist_sort(targets);
    if (targets->count != 1
        || targets->list->begin != 0x0a000001
        || targets->list->end != 0x0aFFFFFE) {
        LOG(0, "selftest: failed %s:%u\n", "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c", 134);;
        return 1;
    }



    rangelist_remove_range2(targets, range_parse_ipv4("10.10.0.0/16", 0, 0));
    rangelist_remove_range2(targets, range_parse_ipv4("10.20.0.0/16", 0, 0));
    rangelist_sort(targets);
    if (targets->count != 3) {
        LOG(0, "selftest: failed %s:%u\n", "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c", 144);;
        return 1;
    }

    rangelist_remove_range2(targets, range_parse_ipv4("10.12.0.0/16", 0, 0));
    rangelist_sort(targets);
    if (targets->count != 4) {
        LOG(0, "selftest: failed %s:%u\n", "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c", 151);;
        return 1;
    }

    rangelist_remove_range2(targets, range_parse_ipv4("10.10.10.10-10.12.12.12", 0, 0));
    rangelist_sort(targets);
    if (targets->count != 3) {
        LOG(0, "selftest: failed %s:%u\n", "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c", 158);;
        return 1;
    }
    rangelist_remove_all(targets);


    {
        unsigned is_error = 0;
        memset(targets, 0, sizeof(targets[0]));

        rangelist_parse_ports(targets, "80,1000-2000,1234,4444", &is_error, 0);
        rangelist_sort(targets);
        if (targets->count != 3 || is_error) {
            LOG(0, "selftest: failed %s:%u\n", "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c", 171);;
            return 1;
        }

        if (targets->list[0].begin != 80 || targets->list[0].end != 80 ||
            targets->list[1].begin != 1000 || targets->list[1].end != 2000 ||
            targets->list[2].begin != 4444 || targets->list[2].end != 4444) {
            LOG(0, "selftest: failed %s:%u\n", "/home/carl/AnghaBench/masscan/src/extr_ranges.c_ranges_selftest.c", 178);;
            return 1;
        }
    }

    return 0;
}
