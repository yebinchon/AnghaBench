#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sd_header {size_t data_len; scalar_t__ num_sd; int len; int /*<<< orphan*/  av_type; int /*<<< orphan*/  av_flags; } ;
typedef  struct sd_header uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct pkt_header {size_t data_len; scalar_t__ num_sd; int len; int /*<<< orphan*/  av_type; int /*<<< orphan*/  av_flags; } ;
struct demux_packet {int len; TYPE_1__* avpacket; struct sd_header* buffer; } ;
struct demux_cache {int dummy; } ;
typedef  int /*<<< orphan*/  sd_hd ;
typedef  int /*<<< orphan*/  hd ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int INT_MAX ; 
 struct sd_header* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_cache*,int /*<<< orphan*/ ) ; 
 struct demux_packet* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct demux_cache*,struct sd_header*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct demux_packet*) ; 

struct demux_packet *FUNC5(struct demux_cache *cache, uint64_t pos)
{
    if (!FUNC1(cache, pos))
        return NULL;

    struct pkt_header hd;

    if (!FUNC3(cache, &hd, sizeof(hd)))
        return NULL;

    if (hd.data_len >= (size_t)-1)
        return NULL;

    struct demux_packet *dp = FUNC2(hd.data_len);
    if (!dp)
        goto fail;

    if (!FUNC3(cache, dp->buffer, dp->len))
        goto fail;

    dp->avpacket->flags = hd.av_flags;

    for (uint32_t n = 0; n < hd.num_sd; n++) {
        struct sd_header sd_hd;

        if (!FUNC3(cache, &sd_hd, sizeof(sd_hd)))
            goto fail;

        if (sd_hd.len > INT_MAX)
            goto fail;

        uint8_t *sd = FUNC0(dp->avpacket, sd_hd.av_type,
                                              sd_hd.len);
        if (!sd)
            goto fail;

        if (!FUNC3(cache, sd, sd_hd.len))
            goto fail;
    }

    return dp;

fail:
    FUNC4(dp);
    return NULL;
}