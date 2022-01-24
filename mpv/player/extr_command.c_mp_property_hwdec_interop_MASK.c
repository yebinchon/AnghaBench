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
struct m_property {int dummy; } ;
struct TYPE_4__ {TYPE_1__* video_out; } ;
struct TYPE_3__ {int /*<<< orphan*/  hwdec_devs; } ;
typedef  TYPE_2__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_UNAVAILABLE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(void *ctx, struct m_property *prop,
                                     int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->video_out || !mpctx->video_out->hwdec_devs)
        return M_PROPERTY_UNAVAILABLE;

    char *names = FUNC0(mpctx->video_out->hwdec_devs);
    int res = FUNC1(action, arg, names);
    FUNC2(names);
    return res;
}