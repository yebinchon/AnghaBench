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
typedef  scalar_t__ u_int16_t ;
struct vendor {scalar_t__ vendorid; struct vendor* next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 struct vendor* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 struct vendor** vendors ; 

__attribute__((used)) static int FUNC4(const char *name, u_int16_t vendorid)
{
	struct vendor *v;
	unsigned int h = FUNC0(vendorid);

	v = vendors[h];
	for (; v; v = v->next)
		if (v->vendorid == vendorid)
			return -1;
	v = FUNC1(sizeof(struct vendor) + FUNC3(name));
	if (!v)
		return -1;
	FUNC2(v->name, name);
	v->vendorid = vendorid;
	v->next = vendors[h];
	vendors[h] = v;
	return 0;
}