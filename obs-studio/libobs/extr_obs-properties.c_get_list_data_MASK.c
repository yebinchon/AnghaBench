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
struct list_data {int dummy; } ;

/* Variables and functions */
 struct list_data* FUNC0 (struct obs_property*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_property*) ; 

__attribute__((used)) static inline struct list_data *FUNC2(struct obs_property *p)
{
	if (!p || !FUNC1(p))
		return NULL;

	return FUNC0(p);
}