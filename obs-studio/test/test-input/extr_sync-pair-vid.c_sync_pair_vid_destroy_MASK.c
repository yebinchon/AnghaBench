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
struct sync_pair_vid {int /*<<< orphan*/  black; int /*<<< orphan*/  white; int /*<<< orphan*/  tex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sync_pair_vid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct sync_pair_vid *spv = data;

	FUNC2();
	FUNC1(spv->tex);
	FUNC1(spv->white);
	FUNC1(spv->black);
	FUNC3();

	FUNC0(spv);
}