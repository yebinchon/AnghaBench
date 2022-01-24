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
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC3(obs_properties_t *ppts, obs_property_t *p,
				   obs_data_t *settings)
{
	bool use_max_bitrate = FUNC0(settings, "limit_bitrate");
	p = FUNC1(ppts, "max_bitrate");
	FUNC2(p, use_max_bitrate);
	p = FUNC1(ppts, "max_bitrate_window");
	FUNC2(p, use_max_bitrate);
	return true;
}