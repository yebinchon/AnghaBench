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
struct priv {TYPE_2__* opts; int /*<<< orphan*/  in_pin; } ;
struct mp_frame {scalar_t__ type; struct mp_aframe* data; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct priv* priv; } ;
struct mp_aframe {int dummy; } ;
struct TYPE_3__ {scalar_t__ num_chmaps; int /*<<< orphan*/ * chmaps; } ;
struct TYPE_4__ {scalar_t__ out_srate; TYPE_1__ out_channels; scalar_t__ fail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*) ; 
 scalar_t__ MP_FRAME_AUDIO ; 
 scalar_t__ MP_FRAME_EOF ; 
 int /*<<< orphan*/  FUNC1 (struct mp_aframe*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_aframe*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_frame*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct mp_frame) ; 
 struct mp_frame FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct mp_filter *f)
{
    struct priv *p = f->priv;

    if (!FUNC5(f->ppins[1], p->in_pin))
        return;

    struct mp_frame frame = FUNC7(p->in_pin);

    if (p->opts->fail) {
        FUNC0(f, "Failing on purpose.\n");
        goto error;
    }

    if (frame.type == MP_FRAME_EOF) {
        FUNC6(f->ppins[1], frame);
        return;
    }

    if (frame.type != MP_FRAME_AUDIO) {
        FUNC0(f, "audio frame expected\n");
        goto error;
    }

    struct mp_aframe *in = frame.data;

    if (p->opts->out_channels.num_chmaps > 0) {
        if (!FUNC1(in, &p->opts->out_channels.chmaps[0])) {
            FUNC0(f, "could not force output channels\n");
            goto error;
        }
    }

    if (p->opts->out_srate)
        FUNC2(in, p->opts->out_srate);

    FUNC6(f->ppins[1], frame);
    return;

error:
    FUNC4(&frame);
    FUNC3(f);
}