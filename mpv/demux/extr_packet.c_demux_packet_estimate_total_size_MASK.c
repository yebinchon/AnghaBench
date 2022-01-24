#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct demux_packet {int len; TYPE_2__* avpacket; int /*<<< orphan*/  is_cached; } ;
struct TYPE_4__ {int side_data_elems; TYPE_1__* side_data; } ;
struct TYPE_3__ {int size; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

size_t FUNC2(struct demux_packet *dp)
{
    size_t size = FUNC0(sizeof(struct demux_packet));
    size += 8 * sizeof(void *); // ta  overhead
    size += 10 * sizeof(void *); // additional estimate for ta_ext_header
    if (dp->avpacket) {
        FUNC1(!dp->is_cached);
        size += FUNC0(dp->len);
        size += FUNC0(sizeof(AVPacket));
        size += 8 * sizeof(void *); // ta  overhead
        size += FUNC0(sizeof(AVBufferRef));
        size += FUNC0(64); // upper bound estimate on sizeof(AVBuffer)
        size += FUNC0(dp->avpacket->side_data_elems *
                            sizeof(dp->avpacket->side_data[0]));
        for (int n = 0; n < dp->avpacket->side_data_elems; n++)
            size += FUNC0(dp->avpacket->side_data[n].size);
    }
    return size;
}