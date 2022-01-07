
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_internal {int num_ranges; struct demux_cached_range** ranges; struct demux_cached_range* current_range; } ;
struct demux_cached_range {int dummy; } ;


 int MP_TARRAY_APPEND (struct demux_internal*,struct demux_cached_range**,int,struct demux_cached_range*) ;
 int MP_TARRAY_REMOVE_AT (struct demux_cached_range**,int,int) ;

__attribute__((used)) static void set_current_range(struct demux_internal *in,
                              struct demux_cached_range *range)
{
    in->current_range = range;


    for (int n = 0; n < in->num_ranges; n++) {
        if (in->ranges[n] == range) {
            MP_TARRAY_REMOVE_AT(in->ranges, in->num_ranges, n);
            break;
        }
    }
    MP_TARRAY_APPEND(in, in->ranges, in->num_ranges, range);
}
