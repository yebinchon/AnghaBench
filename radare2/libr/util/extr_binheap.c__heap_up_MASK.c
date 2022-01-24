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
struct TYPE_3__ {scalar_t__ (* cmp ) (void*,void*) ;int /*<<< orphan*/  a; } ;
typedef  TYPE_1__ RBinHeap ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,void*) ; 
 scalar_t__ FUNC2 (void*,void*) ; 

__attribute__((used)) static inline void FUNC3(RBinHeap *h, size_t i, void *x) {
	size_t j;
	for (; i && (j = (i-1) >> 1, h->cmp (x, FUNC0 (&h->a, j)) < 0); i = j) {
		FUNC1 (&h->a, i, FUNC0 (&h->a, j));
	}
	FUNC1 (&h->a, i, x);
}