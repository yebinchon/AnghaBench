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
struct demux_internal {int num_streams; int /*<<< orphan*/  d_user; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  lock; int /*<<< orphan*/ * streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct demux_internal *in)
{
    for (int n = 0; n < in->num_streams; n++)
        FUNC2(in->streams[n]);
    FUNC1(&in->lock);
    FUNC0(&in->wakeup);
    FUNC2(in->d_user);
}