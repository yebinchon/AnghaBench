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
struct nn_cws {int /*<<< orphan*/  fsm; int /*<<< orphan*/  usock; int /*<<< orphan*/  retry; int /*<<< orphan*/  sws; int /*<<< orphan*/  dns; int /*<<< orphan*/  nic; int /*<<< orphan*/  remote_host; int /*<<< orphan*/  resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_cws*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7 (void *self)
{
    struct nn_cws *cws = self;

    FUNC1 (&cws->resource);
    FUNC1 (&cws->remote_host);
    FUNC1 (&cws->nic);
    FUNC2 (&cws->dns);
    FUNC5 (&cws->sws);
    FUNC0 (&cws->retry);
    FUNC6 (&cws->usock);
    FUNC4 (&cws->fsm);

    FUNC3 (cws);
}