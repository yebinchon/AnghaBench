
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd_header {size_t data_len; scalar_t__ num_sd; int len; int av_type; int av_flags; } ;
typedef struct sd_header uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct pkt_header {size_t data_len; scalar_t__ num_sd; int len; int av_type; int av_flags; } ;
struct demux_packet {int len; TYPE_1__* avpacket; struct sd_header* buffer; } ;
struct demux_cache {int dummy; } ;
typedef int sd_hd ;
typedef int hd ;
struct TYPE_2__ {int flags; } ;


 int INT_MAX ;
 struct sd_header* av_packet_new_side_data (TYPE_1__*,int ,int) ;
 int do_seek (struct demux_cache*,int ) ;
 struct demux_packet* new_demux_packet (size_t) ;
 int read_raw (struct demux_cache*,struct sd_header*,int) ;
 int talloc_free (struct demux_packet*) ;

struct demux_packet *demux_cache_read(struct demux_cache *cache, uint64_t pos)
{
    if (!do_seek(cache, pos))
        return ((void*)0);

    struct pkt_header hd;

    if (!read_raw(cache, &hd, sizeof(hd)))
        return ((void*)0);

    if (hd.data_len >= (size_t)-1)
        return ((void*)0);

    struct demux_packet *dp = new_demux_packet(hd.data_len);
    if (!dp)
        goto fail;

    if (!read_raw(cache, dp->buffer, dp->len))
        goto fail;

    dp->avpacket->flags = hd.av_flags;

    for (uint32_t n = 0; n < hd.num_sd; n++) {
        struct sd_header sd_hd;

        if (!read_raw(cache, &sd_hd, sizeof(sd_hd)))
            goto fail;

        if (sd_hd.len > INT_MAX)
            goto fail;

        uint8_t *sd = av_packet_new_side_data(dp->avpacket, sd_hd.av_type,
                                              sd_hd.len);
        if (!sd)
            goto fail;

        if (!read_raw(cache, sd, sd_hd.len))
            goto fail;
    }

    return dp;

fail:
    talloc_free(dp);
    return ((void*)0);
}
