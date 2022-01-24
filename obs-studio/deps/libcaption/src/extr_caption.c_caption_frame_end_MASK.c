#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libcaption_stauts_t ;
struct TYPE_3__ {int /*<<< orphan*/  back; int /*<<< orphan*/  front; } ;
typedef  TYPE_1__ caption_frame_t ;
typedef  int /*<<< orphan*/  caption_frame_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  LIBCAPTION_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

libcaption_stauts_t FUNC2(caption_frame_t* frame)
{
    FUNC1(&frame->front, &frame->back, sizeof(caption_frame_buffer_t));
    FUNC0(&frame->back); // This is required
    return LIBCAPTION_READY;
}