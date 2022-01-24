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
struct group_data {int /*<<< orphan*/ * content; } ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_PROPERTY_GROUP ; 
 struct group_data* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

obs_properties_t *FUNC1(obs_property_t *p)
{
	struct group_data *data = FUNC0(p, OBS_PROPERTY_GROUP);
	return data ? data->content : NULL;
}