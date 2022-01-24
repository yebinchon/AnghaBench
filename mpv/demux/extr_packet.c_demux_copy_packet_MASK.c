#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct demux_packet {int /*<<< orphan*/  len; int /*<<< orphan*/  buffer; scalar_t__ avpacket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demux_packet*,struct demux_packet*) ; 
 struct demux_packet* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct demux_packet* FUNC2 (scalar_t__) ; 

struct demux_packet *FUNC3(struct demux_packet *dp)
{
    struct demux_packet *new = NULL;
    if (dp->avpacket) {
        new = FUNC2(dp->avpacket);
    } else {
        // Some packets might be not created by new_demux_packet*().
        new = FUNC1(dp->buffer, dp->len);
    }
    if (!new)
        return NULL;
    FUNC0(new, dp);
    return new;
}