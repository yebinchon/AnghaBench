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
typedef  int tristate ;
struct symbol {int dummy; } ;

/* Variables and functions */
#define  mod 130 
#define  no 129 
 int FUNC0 (struct symbol*) ; 
 scalar_t__ FUNC1 (struct symbol*,int) ; 
#define  yes 128 

tristate FUNC2(struct symbol *sym)
{
	tristate oldval, newval;

	oldval = newval = FUNC0(sym);
	do {
		switch (newval) {
		case no:
			newval = mod;
			break;
		case mod:
			newval = yes;
			break;
		case yes:
			newval = no;
			break;
		}
		if (FUNC1(sym, newval))
			break;
	} while (oldval != newval);
	return newval;
}