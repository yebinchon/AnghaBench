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
struct luma_wipe_info {int /*<<< orphan*/  wipes_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct luma_wipe_info *lwipe = data;

	char *path = FUNC2("luma_wipes/wipes.json");

	lwipe->wipes_list = FUNC1(path);

	FUNC0(path);
}