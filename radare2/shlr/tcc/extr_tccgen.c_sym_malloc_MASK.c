#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef  TYPE_1__ Sym ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* sym_free_first ; 

__attribute__((used)) static inline Sym *FUNC1(void) {
	Sym *sym;
	sym = sym_free_first;
	if (!sym) {
		sym = FUNC0 ();
	}
	sym_free_first = sym->next;
	return sym;
}