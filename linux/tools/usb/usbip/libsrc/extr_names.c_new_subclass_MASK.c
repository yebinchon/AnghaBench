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
typedef  int u_int8_t ;
struct subclass {int classid; int subclassid; struct subclass* next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 struct subclass* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 struct subclass** subclasses ; 

__attribute__((used)) static int FUNC4(const char *name, u_int8_t classid, u_int8_t subclassid)
{
	struct subclass *s;
	unsigned int h = FUNC0((classid << 8) | subclassid);

	s = subclasses[h];
	for (; s; s = s->next)
		if (s->classid == classid && s->subclassid == subclassid)
			return -1;
	s = FUNC1(sizeof(struct subclass) + FUNC3(name));
	if (!s)
		return -1;
	FUNC2(s->name, name);
	s->classid = classid;
	s->subclassid = subclassid;
	s->next = subclasses[h];
	subclasses[h] = s;
	return 0;
}