#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ws_off; scalar_t__ ws_segno; } ;
struct TYPE_5__ {scalar_t__ readLen; TYPE_1__ seg; } ;
typedef  TYPE_2__ XLogReaderState ;

/* Variables and functions */

__attribute__((used)) static void
FUNC0(XLogReaderState *state)
{
	state->seg.ws_segno = 0;
	state->seg.ws_off = 0;
	state->readLen = 0;
}