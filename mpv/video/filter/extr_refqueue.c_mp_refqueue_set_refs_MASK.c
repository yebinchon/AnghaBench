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
struct mp_refqueue {int needed_past_frames; int /*<<< orphan*/  needed_future_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct mp_refqueue *q, int past, int future)
{
    FUNC1(past >= 0 && future >= 0);
    q->needed_past_frames = past;
    q->needed_future_frames = FUNC0(future, 1); // at least 1 for determining PTS
}