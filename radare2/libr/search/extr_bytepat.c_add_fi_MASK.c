#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct TYPE_3__* next; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ fnditem ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static void FUNC2 (fnditem* n, unsigned char* blk, int patlen) {
	fnditem* p;
	for (p = n; p->next != NULL; p = p->next) {
		;
	}
	p->next = (fnditem*) FUNC0 (sizeof (fnditem));
	p = p->next;
	FUNC1 (p->str, blk, patlen);
	p->next = NULL;
}