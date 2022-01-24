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
struct protocol {int classid; int subclassid; int protocolid; struct protocol* next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 struct protocol* FUNC1 (scalar_t__) ; 
 struct protocol** protocols ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const char *name, u_int8_t classid, u_int8_t subclassid,
			u_int8_t protocolid)
{
	struct protocol *p;
	unsigned int h = FUNC0((classid << 16) | (subclassid << 8)
				 | protocolid);

	p = protocols[h];
	for (; p; p = p->next)
		if (p->classid == classid && p->subclassid == subclassid
		    && p->protocolid == protocolid)
			return -1;
	p = FUNC1(sizeof(struct protocol) + FUNC3(name));
	if (!p)
		return -1;
	FUNC2(p->name, name);
	p->classid = classid;
	p->subclassid = subclassid;
	p->protocolid = protocolid;
	p->next = protocols[h];
	protocols[h] = p;
	return 0;
}