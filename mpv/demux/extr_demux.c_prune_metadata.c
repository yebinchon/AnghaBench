
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct demux_cached_range {scalar_t__ seek_start; int num_metadata; TYPE_1__** metadata; } ;
struct TYPE_3__ {scalar_t__ pts; } ;


 int MPMIN (int,int) ;
 scalar_t__ MP_NOPTS_VALUE ;
 int MP_TARRAY_REMOVE_AT (TYPE_1__**,int,int ) ;
 int talloc_free (TYPE_1__*) ;

__attribute__((used)) static void prune_metadata(struct demux_cached_range *range)
{
    int first_needed = 0;

    if (range->seek_start == MP_NOPTS_VALUE) {
        first_needed = range->num_metadata;
    } else {
        for (int n = 0; n < range->num_metadata ; n++) {
            if (range->metadata[n]->pts > range->seek_start)
                break;
            first_needed = n;
        }
    }


    first_needed = MPMIN(first_needed, range->num_metadata - 1);



    for (int n = 0; n < first_needed; n++) {
        talloc_free(range->metadata[0]);
        MP_TARRAY_REMOVE_AT(range->metadata, range->num_metadata, 0);
    }
}
