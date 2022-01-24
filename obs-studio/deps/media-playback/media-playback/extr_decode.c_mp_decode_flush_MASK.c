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
struct mp_decode {int eof; int frame_ready; scalar_t__ frame_pts; int /*<<< orphan*/  decoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_decode*) ; 

void FUNC2(struct mp_decode *d)
{
	FUNC0(d->decoder);
	FUNC1(d);
	d->eof = false;
	d->frame_pts = 0;
	d->frame_ready = false;
}