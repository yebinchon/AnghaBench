
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_internal {int dummy; } ;
struct demux_cached_range {int num_streams; int num_metadata; int * metadata; int * streams; } ;


 int clear_queue (int ) ;
 int talloc_free (int ) ;
 int update_seek_ranges (struct demux_cached_range*) ;

__attribute__((used)) static void clear_cached_range(struct demux_internal *in,
                               struct demux_cached_range *range)
{
    for (int n = 0; n < range->num_streams; n++)
        clear_queue(range->streams[n]);

    for (int n = 0; n < range->num_metadata; n++)
        talloc_free(range->metadata[n]);
    range->num_metadata = 0;

    update_seek_ranges(range);
}
