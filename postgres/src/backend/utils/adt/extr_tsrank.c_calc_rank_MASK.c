#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_14__ {scalar_t__ oper; } ;
struct TYPE_17__ {scalar_t__ type; TYPE_1__ qoperator; } ;
struct TYPE_16__ {int /*<<< orphan*/  size; } ;
struct TYPE_15__ {scalar_t__ size; } ;
typedef  TYPE_2__* TSVector ;
typedef  TYPE_3__* TSQuery ;
typedef  TYPE_4__ QueryItem ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_3__*) ; 
 scalar_t__ OP_AND ; 
 scalar_t__ OP_PHRASE ; 
 scalar_t__ QI_OPR ; 
 int RANK_NORM_LENGTH ; 
 int RANK_NORM_LOGLENGTH ; 
 int RANK_NORM_LOGUNIQ ; 
 int RANK_NORM_RDIVRPLUS1 ; 
 int RANK_NORM_UNIQ ; 
 float FUNC1 (float const*,TYPE_2__*,TYPE_3__*) ; 
 float FUNC2 (float const*,TYPE_2__*,TYPE_3__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 float FUNC4 (double) ; 

__attribute__((used)) static float
FUNC5(const float *w, TSVector t, TSQuery q, int32 method)
{
	QueryItem  *item = FUNC0(q);
	float		res = 0.0;
	int			len;

	if (!t->size || !q->size)
		return 0.0;

	/* XXX: What about NOT? */
	res = (item->type == QI_OPR && (item->qoperator.oper == OP_AND ||
									item->qoperator.oper == OP_PHRASE)) ?
		FUNC1(w, t, q) :
		FUNC2(w, t, q);

	if (res < 0)
		res = 1e-20f;

	if ((method & RANK_NORM_LOGLENGTH) && t->size > 0)
		res /= FUNC4((double) (FUNC3(t) + 1)) / FUNC4(2.0);

	if (method & RANK_NORM_LENGTH)
	{
		len = FUNC3(t);
		if (len > 0)
			res /= (float) len;
	}

	/* RANK_NORM_EXTDIST not applicable */

	if ((method & RANK_NORM_UNIQ) && t->size > 0)
		res /= (float) (t->size);

	if ((method & RANK_NORM_LOGUNIQ) && t->size > 0)
		res /= FUNC4((double) (t->size + 1)) / FUNC4(2.0);

	if (method & RANK_NORM_RDIVRPLUS1)
		res /= (res + 1);

	return res;
}