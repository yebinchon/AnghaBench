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
struct luma_wipe_info {int /*<<< orphan*/  wipes_list; int /*<<< orphan*/  luma_image; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct luma_wipe_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *data)
{
	struct luma_wipe_info *lwipe = data;

	FUNC3();
	FUNC1(&lwipe->luma_image);
	FUNC4();

	FUNC2(lwipe->wipes_list);

	FUNC0(lwipe);
}