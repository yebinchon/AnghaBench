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
struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct ep_struct {int written; char* name; TYPE_1__ vars; } ;
struct dstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct dstr *shader, struct ep_struct *st)
{
	size_t i;

	if (st->written)
		return;

	FUNC0(shader, "struct ");
	FUNC0(shader, st->name);
	FUNC0(shader, " {");

	for (i = 0; i < st->vars.num; i++) {
		FUNC0(shader, "\n\t");
		FUNC1(shader, st->vars.array + i);
		FUNC0(shader, ";");
	}

	FUNC0(shader, "\n};\n");
	st->written = true;
}