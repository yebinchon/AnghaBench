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
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC5(obs_data_t *settings,
					 json_t *recommended)
{
	json_t *item = FUNC2(recommended, "max audio bitrate");
	if (FUNC1(item)) {
		int max_bitrate = (int)FUNC0(item);
		if (FUNC3(settings, "bitrate") > max_bitrate)
			FUNC4(settings, "bitrate", max_bitrate);
	}
}