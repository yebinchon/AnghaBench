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
struct path_data {char const* filter; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_PROPERTY_PATH ; 
 struct path_data* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

const char *FUNC1(obs_property_t *p)
{
	struct path_data *data = FUNC0(p, OBS_PROPERTY_PATH);
	return data ? data->filter : NULL;
}