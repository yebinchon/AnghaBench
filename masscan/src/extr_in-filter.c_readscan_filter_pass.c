
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {scalar_t__ count; } ;


 int rangelist_is_contains (struct RangeList const*,unsigned int) ;

int
readscan_filter_pass(unsigned ip, unsigned port, unsigned type,
              const struct RangeList *ips,
              const struct RangeList *ports,
              const struct RangeList *btypes)
{
    if (ips && ips->count) {
        if (!rangelist_is_contains(ips, ip))
            return 0;
    }
    if (ports && ports->count) {
        if (!rangelist_is_contains(ports, port))
            return 0;
    }
    if (btypes && btypes->count) {
        if (!rangelist_is_contains(btypes, type))
            return 0;
    }

    return 1;
}
