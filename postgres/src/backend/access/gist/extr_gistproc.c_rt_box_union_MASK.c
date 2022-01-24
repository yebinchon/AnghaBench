#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* y; void* x; } ;
struct TYPE_8__ {void* y; void* x; } ;
struct TYPE_9__ {TYPE_1__ low; TYPE_2__ high; } ;
typedef  TYPE_3__ BOX ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 void* FUNC1 (void*,void*) ; 

__attribute__((used)) static void
FUNC2(BOX *n, const BOX *a, const BOX *b)
{
	n->high.x = FUNC0(a->high.x, b->high.x);
	n->high.y = FUNC0(a->high.y, b->high.y);
	n->low.x = FUNC1(a->low.x, b->low.x);
	n->low.y = FUNC1(a->low.y, b->low.y);
}