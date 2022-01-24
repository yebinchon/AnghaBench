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
typedef  int /*<<< orphan*/  obs_data_item_t ;
typedef  int /*<<< orphan*/  get_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_DATA_NUMBER ; 
 long long FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline long long FUNC2(obs_data_item_t *item,
					  get_data_t get_data)
{
	return FUNC0(FUNC1(item, OBS_DATA_NUMBER) ? item : NULL,
			get_data);
}