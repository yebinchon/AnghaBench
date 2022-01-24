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
struct obs_property {int dummy; } ;
struct list_data {int format; } ;
typedef  enum obs_combo_format { ____Placeholder_obs_combo_format } obs_combo_format ;

/* Variables and functions */
 struct list_data* FUNC0 (struct obs_property*) ; 

__attribute__((used)) static inline struct list_data *FUNC1(struct obs_property *p,
						  enum obs_combo_format format)
{
	struct list_data *data = FUNC0(p);
	return (data && data->format == format) ? data : NULL;
}