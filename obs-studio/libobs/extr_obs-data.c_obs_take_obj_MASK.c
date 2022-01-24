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
typedef  int /*<<< orphan*/  set_item_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  obs_data_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(obs_data_t *data, obs_data_item_t **item,
				const char *name, obs_data_t *obj,
				set_item_t set_item_)
{
	FUNC1(data, item, name, obj, set_item_);
	FUNC0(obj);
}