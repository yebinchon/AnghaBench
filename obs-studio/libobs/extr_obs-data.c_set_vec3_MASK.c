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
struct vec3 {int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  int /*<<< orphan*/  (* set_obj_t ) (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(obs_data_t *data, const char *name,
			    const struct vec3 *val, set_obj_t set_obj)
{
	obs_data_t *obj = FUNC0();
	FUNC2(obj, "x", val->x);
	FUNC2(obj, "y", val->y);
	FUNC2(obj, "z", val->z);
	set_obj(data, name, obj);
	FUNC1(obj);
}