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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void FUNC4(obs_data_t *settings)
{
	FUNC2(settings, "bitrate", 2500);
	FUNC0(settings, "limit_bitrate", false);
	FUNC2(settings, "max_bitrate", 2500);
	FUNC1(settings, "max_bitrate_window", 1.5f);
	FUNC2(settings, "keyint_sec", 0);
	FUNC3(settings, "profile", "");
	FUNC0(settings, "bframes", true);
}