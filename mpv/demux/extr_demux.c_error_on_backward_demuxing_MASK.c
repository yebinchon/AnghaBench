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
struct demux_internal {int back_demuxing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demux_internal*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_internal*,int) ; 

__attribute__((used)) static void FUNC2(struct demux_internal *in)
{
    if (!in->back_demuxing)
        return;
    FUNC0(in, "Disabling backward demuxing.\n");
    in->back_demuxing = false;
    FUNC1(in, true);
}