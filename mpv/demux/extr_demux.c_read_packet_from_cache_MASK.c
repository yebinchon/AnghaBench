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
struct TYPE_2__ {int /*<<< orphan*/  pos; } ;
struct demux_packet {TYPE_1__ cached_data; scalar_t__ is_cached; } ;
struct demux_internal {int /*<<< orphan*/  cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demux_internal*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct demux_packet* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct demux_packet* FUNC3 (struct demux_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct demux_packet*,struct demux_packet*) ; 

__attribute__((used)) static struct demux_packet *FUNC5(struct demux_internal *in,
                                                   struct demux_packet *pkt)
{
    if (!pkt)
        return NULL;

    if (pkt->is_cached) {
        FUNC1(in->cache);
        struct demux_packet *meta = pkt;
        pkt = FUNC2(in->cache, pkt->cached_data.pos);
        if (pkt) {
            FUNC4(pkt, meta);
        } else {
            FUNC0(in, "Failed to retrieve packet from cache.\n");
        }
    } else {
        // The returned packet is mutated etc. and will be owned by the user.
        pkt = FUNC3(pkt);
    }

    return pkt;
}