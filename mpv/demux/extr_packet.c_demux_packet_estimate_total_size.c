
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct demux_packet {int len; TYPE_2__* avpacket; int is_cached; } ;
struct TYPE_4__ {int side_data_elems; TYPE_1__* side_data; } ;
struct TYPE_3__ {int size; } ;
typedef int AVPacket ;
typedef int AVBufferRef ;


 size_t ROUND_ALLOC (int) ;
 int assert (int) ;

size_t demux_packet_estimate_total_size(struct demux_packet *dp)
{
    size_t size = ROUND_ALLOC(sizeof(struct demux_packet));
    size += 8 * sizeof(void *);
    size += 10 * sizeof(void *);
    if (dp->avpacket) {
        assert(!dp->is_cached);
        size += ROUND_ALLOC(dp->len);
        size += ROUND_ALLOC(sizeof(AVPacket));
        size += 8 * sizeof(void *);
        size += ROUND_ALLOC(sizeof(AVBufferRef));
        size += ROUND_ALLOC(64);
        size += ROUND_ALLOC(dp->avpacket->side_data_elems *
                            sizeof(dp->avpacket->side_data[0]));
        for (int n = 0; n < dp->avpacket->side_data_elems; n++)
            size += ROUND_ALLOC(dp->avpacket->side_data[n].size);
    }
    return size;
}
