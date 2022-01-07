
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_cached_range {scalar_t__ seek_start; } ;



__attribute__((used)) static int range_time_compare(const void *p1, const void *p2)
{
    struct demux_cached_range *r1 = (void *)p1;
    struct demux_cached_range *r2 = (void *)p2;

    if (r1->seek_start == r2->seek_start)
        return 0;
    return r1->seek_start < r2->seek_start ? -1 : 1;
}
