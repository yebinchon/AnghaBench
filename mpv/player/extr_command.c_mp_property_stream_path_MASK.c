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
struct TYPE_4__ {TYPE_1__* demuxer; } ;
struct TYPE_3__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_2__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_UNAVAILABLE ; 
 int FUNC0 (int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *ctx, struct m_property *prop,
                                   int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->demuxer || !mpctx->demuxer->filename)
        return M_PROPERTY_UNAVAILABLE;
    return FUNC0(action, arg, mpctx->demuxer->filename);
}