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
struct obs_encoder_info {int /*<<< orphan*/  type_data; int /*<<< orphan*/  (* get_defaults2 ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_defaults ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline obs_data_t *FUNC3(const struct obs_encoder_info *info)
{
	obs_data_t *settings = FUNC0();
	if (info->get_defaults) {
		info->get_defaults(settings);
	}
	if (info->get_defaults2) {
		info->get_defaults2(settings, info->type_data);
	}
	return settings;
}