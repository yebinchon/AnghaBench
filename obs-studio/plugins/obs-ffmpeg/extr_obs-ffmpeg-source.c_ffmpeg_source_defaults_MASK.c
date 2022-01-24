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
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC2(obs_data_t *settings)
{
	FUNC0(settings, "is_local_file", true);
	FUNC0(settings, "looping", false);
	FUNC0(settings, "clear_on_media_end", true);
	FUNC0(settings, "restart_on_activate", true);
	FUNC1(settings, "buffering_mb", 2);
	FUNC1(settings, "speed_percent", 100);
}