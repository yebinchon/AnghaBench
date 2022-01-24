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
struct timeline {int num_sources; struct demuxer* demuxer; struct demuxer** sources; } ;
struct demuxer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demuxer*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeline*) ; 

void FUNC2(struct timeline *tl)
{
    if (!tl)
        return;
    for (int n = 0; n < tl->num_sources; n++) {
        struct demuxer *d = tl->sources[n];
        if (d != tl->demuxer)
            FUNC0(d);
    }
    FUNC1(tl);
}