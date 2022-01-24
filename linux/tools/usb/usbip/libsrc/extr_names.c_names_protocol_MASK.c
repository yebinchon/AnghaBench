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
struct protocol {int classid; int subclassid; int protocolid; char const* name; struct protocol* next; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 struct protocol** protocols ; 

const char *FUNC1(u_int8_t classid, u_int8_t subclassid,
			   u_int8_t protocolid)
{
	struct protocol *p;

	p = protocols[FUNC0((classid << 16) | (subclassid << 8)
			      | protocolid)];
	for (; p; p = p->next)
		if (p->classid == classid && p->subclassid == subclassid &&
		    p->protocolid == protocolid)
			return p->name;
	return NULL;
}