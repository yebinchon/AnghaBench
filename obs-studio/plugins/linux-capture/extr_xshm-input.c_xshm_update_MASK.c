#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  obs_data_t ;
struct TYPE_4__ {int /*<<< orphan*/  server; void* advanced; void* show_cursor; int /*<<< orphan*/  screen_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* data ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(void *vptr, obs_data_t *settings)
{
	FUNC0(vptr);

	FUNC6(data);

	data->screen_id = FUNC3(settings, "screen");
	data->show_cursor = FUNC2(settings, "show_cursor");
	data->advanced = FUNC2(settings, "advanced");
	data->server = FUNC1(FUNC4(settings, "server"));

	FUNC5(data);
}