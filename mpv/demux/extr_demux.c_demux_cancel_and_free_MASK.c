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
struct demuxer {int /*<<< orphan*/  cancel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demuxer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct demuxer *demuxer)
{
    if (!demuxer)
        return;
    FUNC1(demuxer->cancel);
    FUNC0(demuxer);
}