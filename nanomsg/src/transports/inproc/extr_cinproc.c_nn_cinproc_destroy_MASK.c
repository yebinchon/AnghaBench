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
struct nn_cinproc {int /*<<< orphan*/  item; int /*<<< orphan*/  fsm; int /*<<< orphan*/  sinprocs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nn_cinproc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (void *self)
{
    struct nn_cinproc *cinproc = self;

    FUNC3 (&cinproc->sinprocs);
    FUNC1 (&cinproc->fsm);
    FUNC2 (&cinproc->item);

    FUNC0 (cinproc);
}