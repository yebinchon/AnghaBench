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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 

void FUNC3(obs_data_t *settings)
{
	FUNC1(settings, "bitrate", 2500);
	FUNC1(settings, "max_bitrate", 5000);
	FUNC1(settings, "keyint_sec", 0);
	FUNC1(settings, "cqp", 20);
	FUNC2(settings, "rate_control", "CBR");
	FUNC2(settings, "preset", "hq");
	FUNC2(settings, "profile", "high");
	FUNC0(settings, "psycho_aq", true);
	FUNC1(settings, "gpu", 0);
	FUNC1(settings, "bf", 2);
}