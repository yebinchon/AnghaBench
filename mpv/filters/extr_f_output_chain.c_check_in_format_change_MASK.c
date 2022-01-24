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
struct mp_user_filter {int /*<<< orphan*/  last_in_aformat; int /*<<< orphan*/  name; int /*<<< orphan*/  last_in_vformat; struct chain* p; } ;
struct mp_image {int /*<<< orphan*/  params; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_aframe {int /*<<< orphan*/  params; } ;
struct TYPE_2__ {int reconfig_happened; int /*<<< orphan*/  output_aformat; int /*<<< orphan*/  input_aformat; int /*<<< orphan*/  output_params; int /*<<< orphan*/  input_params; } ;
struct chain {TYPE_1__ public; struct mp_user_filter* output; struct mp_user_filter* input; } ;

/* Variables and functions */
 scalar_t__ MP_FRAME_AUDIO ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct chain*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct chain*) ; 

__attribute__((used)) static void FUNC7(struct mp_user_filter *u,
                                   struct mp_frame frame)
{
    struct chain *p = u->p;

    if (frame.type == MP_FRAME_VIDEO) {
        struct mp_image *img = frame.data;

        if (!FUNC4(&img->params, &u->last_in_vformat)) {
            FUNC0(p, "[%s] %s\n", u->name,
                       FUNC5(&img->params));
            u->last_in_vformat = img->params;

            if (u == p->input) {
                p->public.input_params = img->params;

                // Unfortunately there's no good place to update these.
                // But a common case is enabling HW decoding, which
                // might init some support of them in the VO, and update
                // the VO's format list.
                FUNC6(p);
            } else if (u == p->output) {
                p->public.output_params = img->params;
            }

            p->public.reconfig_happened = true;
        }
    }

    if (frame.type == MP_FRAME_AUDIO) {
        struct mp_aframe *aframe = frame.data;

        if (!FUNC2(aframe, u->last_in_aformat)) {
            FUNC0(p, "[%s] %s\n", u->name,
                       FUNC3(aframe));
            FUNC1(u->last_in_aformat, aframe);

            if (u == p->input) {
                FUNC1(p->public.input_aformat, aframe);
            } else if (u == p->output) {
                FUNC1(p->public.output_aformat, aframe);
            }

            p->public.reconfig_happened = true;
        }
    }
}