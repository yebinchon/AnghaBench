#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_4__ {int ndigits; int /*<<< orphan*/  dscale; int /*<<< orphan*/  weight; int /*<<< orphan*/  num_uncarried; void* neg_digits; void* pos_digits; } ;
typedef  TYPE_1__ NumericSumAccum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(NumericSumAccum *dst, NumericSumAccum *src)
{
	dst->pos_digits = FUNC1(src->ndigits * sizeof(int32));
	dst->neg_digits = FUNC1(src->ndigits * sizeof(int32));

	FUNC0(dst->pos_digits, src->pos_digits, src->ndigits * sizeof(int32));
	FUNC0(dst->neg_digits, src->neg_digits, src->ndigits * sizeof(int32));
	dst->num_uncarried = src->num_uncarried;
	dst->ndigits = src->ndigits;
	dst->weight = src->weight;
	dst->dscale = src->dscale;
}