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
struct variable {int brace_level; struct variable* next; struct ECPGtype* type; int /*<<< orphan*/  name; } ;
struct ECPGtype {int dummy; } ;

/* Variables and functions */
 struct variable* allvariables ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

struct variable *
FUNC2(const char *name, struct ECPGtype *type, int brace_level)
{
	struct variable *p = (struct variable *) FUNC0(sizeof(struct variable));

	p->name = FUNC1(name);
	p->type = type;
	p->brace_level = brace_level;

	p->next = allvariables;
	allvariables = p;

	return p;
}