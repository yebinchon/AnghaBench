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
struct mp_chmap {int dummy; } ;
struct mp_aframe {int dummy; } ;
struct m_property {int dummy; } ;
struct TYPE_2__ {scalar_t__ ao; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int*,int*,struct mp_chmap*) ; 
 struct mp_aframe* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mp_aframe*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_aframe*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_aframe*,int) ; 
 int FUNC5 (struct mp_aframe*,int,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_aframe*) ; 

__attribute__((used)) static int FUNC7(void *ctx, struct m_property *prop,
                                        int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct mp_aframe *frame = NULL;
    if (mpctx->ao) {
        frame = FUNC1();
        int samplerate;
        int format;
        struct mp_chmap channels;
        FUNC0(mpctx->ao, &samplerate, &format, &channels);
        FUNC4(frame, samplerate);
        FUNC3(frame, format);
        FUNC2(frame, &channels);
    }
    int r = FUNC5(frame, action, arg);
    FUNC6(frame);
    return r;
}