#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int red; struct TYPE_6__** child; } ;
typedef  int /*<<< orphan*/  (* RBNodeSum ) (TYPE_1__*) ;
typedef  TYPE_1__ RBNode ;

/* Variables and functions */

__attribute__((used)) static inline RBNode *FUNC0(RBNode *x, int dir, RBNodeSum sum) {
	RBNode *y = x->child[dir], *z = y->child[!dir];
	y->child[!dir] = z->child[dir];
	z->child[dir] = y;
	x->child[dir] = z->child[!dir];
	z->child[!dir] = x;
	x->red = y->red = true;
	z->red = false;
	if (sum) {
		sum (x);
		sum (y);
	}
	return z;
}