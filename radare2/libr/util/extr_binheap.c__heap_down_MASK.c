#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t len; } ;
struct TYPE_8__ {TYPE_1__ v; } ;
struct TYPE_7__ {scalar_t__ (* cmp ) (void*,void*) ;TYPE_3__ a; } ;
typedef  TYPE_2__ RBinHeap ;

/* Variables and functions */
 void* FUNC0 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t,void*) ; 
 scalar_t__ FUNC2 (void*,void*) ; 
 scalar_t__ FUNC3 (void*,void*) ; 

__attribute__((used)) static inline void FUNC4(RBinHeap *h, size_t i, void *x) {
	size_t j;
	for (; j = i * 2 + 1, j < h->a.v.len; i = j) {
		if (j + 1 < h->a.v.len && h->cmp (FUNC0 (&h->a, j+1), FUNC0 (&h->a, j)) < 0) {
			j++;
		}
		if (h->cmp (FUNC0 (&h->a, j), x) >= 0) {
			break;
		}
		FUNC1 (&h->a, i, FUNC0 (&h->a, j));
	}
	FUNC1 (&h->a, i, x);
}