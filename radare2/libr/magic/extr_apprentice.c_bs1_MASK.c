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
typedef  void* ut32 ;
struct TYPE_2__ {void* q; } ;
struct r_magic {void* num_mask; TYPE_1__ value; void* str_flags; void* str_range; int /*<<< orphan*/  type; void* lineno; void* in_offset; void* offset; int /*<<< orphan*/  cont_level; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 

__attribute__((used)) static void FUNC4(struct r_magic *m) {
	m->cont_level = FUNC1(m->cont_level);
	m->offset = FUNC2((ut32)m->offset);
	m->in_offset = FUNC2((ut32)m->in_offset);
	m->lineno = FUNC2((ut32)m->lineno);
	if (FUNC0 (m->type)) {
		m->str_range = FUNC2(m->str_range);
		m->str_flags = FUNC2(m->str_flags);
	} else {
		m->value.q = FUNC3(m->value.q);
		m->num_mask = FUNC3(m->num_mask);
	}
}