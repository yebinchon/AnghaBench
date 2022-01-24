#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct variable {int /*<<< orphan*/ * next; scalar_t__ brace_level; struct ECPGtype* type; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/ * element; } ;
struct ECPGtype {scalar_t__ counter; TYPE_1__ u; int /*<<< orphan*/ * struct_sizeof; int /*<<< orphan*/ * size; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECPGt_sqlda ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

struct variable *
FUNC2(const char *name)
{
	struct variable *p = (struct variable *) FUNC0(sizeof(struct variable));

	p->name = FUNC1(name);
	p->type = (struct ECPGtype *) FUNC0(sizeof(struct ECPGtype));
	p->type->type = ECPGt_sqlda;
	p->type->size = NULL;
	p->type->struct_sizeof = NULL;
	p->type->u.element = NULL;
	p->type->counter = 0;
	p->brace_level = 0;
	p->next = NULL;

	return p;
}