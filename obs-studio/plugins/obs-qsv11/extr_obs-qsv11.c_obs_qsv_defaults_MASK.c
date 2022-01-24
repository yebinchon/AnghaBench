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

__attribute__((used)) static void FUNC3(obs_data_t *settings)
{
	FUNC2(settings, "target_usage", "balanced");
	FUNC1(settings, "bitrate", 2500);
	FUNC1(settings, "max_bitrate", 3000);
	FUNC2(settings, "profile", "high");
	FUNC1(settings, "async_depth", 4);
	FUNC2(settings, "rate_control", "CBR");

	FUNC1(settings, "accuracy", 1000);
	FUNC1(settings, "convergence", 1);
	FUNC1(settings, "qpi", 23);
	FUNC1(settings, "qpp", 23);
	FUNC1(settings, "qpb", 23);
	FUNC1(settings, "icq_quality", 23);
	FUNC1(settings, "la_depth", 15);

	FUNC1(settings, "keyint_sec", 3);
	FUNC1(settings, "bframes", 3);
	FUNC0(settings, "mbbrc", true);
}