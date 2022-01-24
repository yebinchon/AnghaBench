#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mp_frame {size_t type; int /*<<< orphan*/  data; } ;
struct AVRational {int dummy; } ;
struct TYPE_6__ {TYPE_1__* (* new_av_ref ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  pts; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 TYPE_4__* frame_handlers ; 
 int /*<<< orphan*/  FUNC0 (struct mp_frame) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct AVRational*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

AVFrame *FUNC3(struct mp_frame frame, struct AVRational *tb)
{
    if (!frame_handlers[frame.type].new_av_ref)
        return NULL;

    AVFrame *res = frame_handlers[frame.type].new_av_ref(frame.data);
    if (!res)
        return NULL;

    res->pts = FUNC1(FUNC0(frame), tb);
    return res;
}