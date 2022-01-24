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
struct luma_wipe_info {int /*<<< orphan*/  wipes_list; } ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  int /*<<< orphan*/  obs_data_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  S_LUMA_IMG ; 
 int /*<<< orphan*/  S_LUMA_INV ; 
 int /*<<< orphan*/  S_LUMA_SOFT ; 
 int /*<<< orphan*/  T_LUMA_IMG ; 
 int /*<<< orphan*/  T_LUMA_INV ; 
 int /*<<< orphan*/  T_LUMA_SOFT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,double) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static obs_properties_t *FUNC10(void *data)
{
	obs_properties_t *props = FUNC8();
	struct luma_wipe_info *lwipe = data;

	obs_property_t *p;

	p = FUNC7(props, S_LUMA_IMG, T_LUMA_IMG,
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);

	obs_data_item_t *item = FUNC0(lwipe->wipes_list);

	for (; item != NULL; FUNC3(&item)) {
		const char *name = FUNC1(item);
		const char *path = FUNC2(item);
		FUNC9(p, FUNC4(name), path);
	}

	FUNC6(props, S_LUMA_SOFT, T_LUMA_SOFT, 0.0, 1.0,
				 0.05);
	FUNC5(props, S_LUMA_INV, T_LUMA_INV);

	return props;
}