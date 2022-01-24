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
struct obs_property {int enabled; int visible; int type; void* desc; void* name; struct obs_properties* parent; } ;
struct obs_properties {int dummy; } ;
typedef  enum obs_property_type { ____Placeholder_obs_property_type } obs_property_type ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 struct obs_property* FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_properties*,struct obs_property*) ; 

__attribute__((used)) static inline struct obs_property *FUNC4(struct obs_properties *props,
					    const char *name, const char *desc,
					    enum obs_property_type type)
{
	size_t data_size = FUNC2(type);
	struct obs_property *p;

	p = FUNC1(sizeof(struct obs_property) + data_size);
	p->parent = props;
	p->enabled = true;
	p->visible = true;
	p->type = type;
	p->name = FUNC0(name);
	p->desc = FUNC0(desc);
	FUNC3(props, p);

	return p;
}