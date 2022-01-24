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
struct ass_state {int /*<<< orphan*/ * log; int /*<<< orphan*/ * library; int /*<<< orphan*/ * render; int /*<<< orphan*/ * track; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ass_state *ass)
{
    if (ass->track)
        FUNC0(ass->track);
    ass->track = NULL;
    if (ass->render)
        FUNC2(ass->render);
    ass->render = NULL;
    if (ass->library)
        FUNC1(ass->library);
    ass->library = NULL;
    FUNC3(ass->log);
    ass->log = NULL;
}