#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct demuxer {int dummy; } ;
struct MPContext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,struct demuxer*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct demuxer*) ; 
 int /*<<< orphan*/  FUNC2 (struct demuxer*,int) ; 

void FUNC3(struct MPContext *mpctx, struct demuxer *demuxer)
{
    for (int n = 0; n < FUNC1(demuxer); n++)
        FUNC0(mpctx, demuxer, FUNC2(demuxer, n));
}