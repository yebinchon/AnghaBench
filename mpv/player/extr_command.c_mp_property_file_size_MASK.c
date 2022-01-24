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
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {TYPE_1__* demuxer; } ;
struct TYPE_3__ {scalar_t__ filesize; } ;
typedef  TYPE_2__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_OK ; 
 int M_PROPERTY_PRINT ; 
 int M_PROPERTY_UNAVAILABLE ; 
 char* FUNC0 (scalar_t__) ; 
 int FUNC1 (int,void*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(void *ctx, struct m_property *prop,
                                 int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->demuxer)
        return M_PROPERTY_UNAVAILABLE;

    int64_t size = mpctx->demuxer->filesize;
    if (size < 0)
        return M_PROPERTY_UNAVAILABLE;

    if (action == M_PROPERTY_PRINT) {
        *(char **)arg = FUNC0(size);
        return M_PROPERTY_OK;
    }
    return FUNC1(action, arg, size);
}