#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct m_property {int dummy; } ;
struct TYPE_8__ {TYPE_3__* playing; TYPE_2__* demuxer; TYPE_1__* opts; } ;
struct TYPE_7__ {char* title; } ;
struct TYPE_6__ {int /*<<< orphan*/  metadata; } ;
struct TYPE_5__ {char* media_title; } ;
typedef  TYPE_4__ MPContext ;

/* Variables and functions */
 int FUNC0 (int,void*,char*) ; 
 int FUNC1 (void*,struct m_property*,int,void*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(void *ctx, struct m_property *prop,
                                   int action, void *arg)
{
    MPContext *mpctx = ctx;
    char *name = NULL;
    if (mpctx->opts->media_title)
        name = mpctx->opts->media_title;
    if (name && name[0])
        return FUNC0(action, arg, name);
    if (mpctx->demuxer) {
        name = FUNC2(mpctx->demuxer->metadata, "service_name");
        if (name && name[0])
            return FUNC0(action, arg, name);
        name = FUNC2(mpctx->demuxer->metadata, "title");
        if (name && name[0])
            return FUNC0(action, arg, name);
        name = FUNC2(mpctx->demuxer->metadata, "icy-title");
        if (name && name[0])
            return FUNC0(action, arg, name);
    }
    if (mpctx->playing && mpctx->playing->title)
        return FUNC0(action, arg, mpctx->playing->title);
    return FUNC1(ctx, prop, action, arg);
}