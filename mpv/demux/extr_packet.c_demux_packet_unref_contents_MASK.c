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
struct demux_packet {scalar_t__ len; int /*<<< orphan*/ * buffer; int /*<<< orphan*/ * avpacket; int /*<<< orphan*/  is_cached; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct demux_packet *dp)
{
    if (dp->avpacket) {
        FUNC0(!dp->is_cached);
        FUNC1(dp->avpacket);
        FUNC2(dp->avpacket);
        dp->avpacket = NULL;
        dp->buffer = NULL;
        dp->len = 0;
    }
}