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
struct MPContext {int num_tracks; TYPE_1__** tracks; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,char const*) ; 
 int STREAM_TYPE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,TYPE_1__*) ; 

void FUNC2(struct MPContext *mpctx, const char *msg)
{
    if (msg)
        FUNC0(mpctx, "%s\n", msg);
    for (int t = 0; t < STREAM_TYPE_COUNT; t++) {
        for (int n = 0; n < mpctx->num_tracks; n++)
            if (mpctx->tracks[n]->type == t)
                FUNC1(mpctx, mpctx->tracks[n]);
    }
}