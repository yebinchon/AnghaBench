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
struct TYPE_2__ {int /*<<< orphan*/  val; } ;
struct symbol {int type; TYPE_1__ curr; } ;

/* Variables and functions */
#define  S_HEX 129 
#define  S_INT 128 
 long long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 

__attribute__((used)) static long long FUNC2(struct symbol *sym, int base)
{
	FUNC1(sym);
	switch (sym->type) {
	case S_INT:
		base = 10;
		break;
	case S_HEX:
		base = 16;
		break;
	default:
		break;
	}
	return FUNC0(sym->curr.val, NULL, base);
}