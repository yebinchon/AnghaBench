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
struct coreaudio_data {int /*<<< orphan*/  reconnect_thread; scalar_t__ reconnecting; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct coreaudio_data*) ; 
 int /*<<< orphan*/  reconnect_thread ; 

__attribute__((used)) static void FUNC2(struct coreaudio_data *ca)
{
	int ret;

	if (ca->reconnecting)
		return;

	ret = FUNC1(&ca->reconnect_thread, NULL, reconnect_thread, ca);
	if (ret != 0)
		FUNC0(LOG_WARNING,
		     "[coreaudio_begin_reconnect] failed to "
		     "create thread, error code: %d",
		     ret);
}