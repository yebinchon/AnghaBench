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
typedef  struct obs_sceneitem_crop {int /*<<< orphan*/  crop; } const obs_sceneitem_crop ;
typedef  struct obs_sceneitem_crop obs_sceneitem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_sceneitem_crop const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_sceneitem_crop const*,char*) ; 

void FUNC2(const obs_sceneitem_t *item,
			    struct obs_sceneitem_crop *crop)
{
	if (!FUNC1(item, "obs_sceneitem_get_crop"))
		return;
	if (!FUNC1(crop, "obs_sceneitem_get_crop"))
		return;

	FUNC0(crop, &item->crop, sizeof(*crop));
}