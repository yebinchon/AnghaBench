
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_internal {int num_ranges; struct demux_cached_range** ranges; int seekable_cache; } ;
struct demux_cached_range {double seek_start; double seek_end; scalar_t__ is_eof; scalar_t__ is_bof; } ;


 double MP_NOPTS_VALUE ;
 int MP_VERBOSE (struct demux_internal*,char*,...) ;
 int SEEK_FACTOR ;

__attribute__((used)) static struct demux_cached_range *find_cache_seek_range(struct demux_internal *in,
                                                        double pts, int flags)
{




    if ((flags & SEEK_FACTOR) || !in->seekable_cache)
        return ((void*)0);

    struct demux_cached_range *res = ((void*)0);

    for (int n = 0; n < in->num_ranges; n++) {
        struct demux_cached_range *r = in->ranges[n];
        if (r->seek_start != MP_NOPTS_VALUE) {
            MP_VERBOSE(in, "cached range %d: %f <-> %f (bof=%d, eof=%d)\n",
                       n, r->seek_start, r->seek_end, r->is_bof, r->is_eof);

            if ((pts >= r->seek_start || r->is_bof) &&
                (pts <= r->seek_end || r->is_eof))
            {
                MP_VERBOSE(in, "...using this range for in-cache seek.\n");
                res = r;
                break;
            }
        }
    }

    return res;
}
