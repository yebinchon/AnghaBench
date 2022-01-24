#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vars {int err; int /*<<< orphan*/ * stop; TYPE_3__* details; TYPE_1__* g; int /*<<< orphan*/  dfa2; int /*<<< orphan*/  dfa1; } ;
struct dfa {int dummy; } ;
struct colormap {int dummy; } ;
struct cnfa {int dummy; } ;
typedef  int /*<<< orphan*/  chr ;
struct TYPE_5__ {void* rm_eo; void* rm_so; } ;
struct TYPE_6__ {TYPE_2__ rm_extend; } ;
struct TYPE_4__ {int cflags; struct cnfa search; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int REG_EXPECT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vars*,struct cnfa*,struct colormap*,struct dfa*,struct dfa*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (struct dfa*) ; 
 struct dfa* FUNC6 (struct vars*,struct cnfa*,struct colormap*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct vars *v,
	  struct cnfa *cnfa,
	  struct colormap *cm)
{
	struct dfa *s;
	struct dfa *d;
	chr		   *cold;
	int			ret;

	s = FUNC6(v, &v->g->search, cm, &v->dfa1);
	FUNC1();
	d = FUNC6(v, cnfa, cm, &v->dfa2);
	if (FUNC0())
	{
		FUNC3(d == NULL);
		FUNC5(s);
		return v->err;
	}

	ret = FUNC4(v, cnfa, cm, d, s, &cold);

	FUNC5(d);
	FUNC5(s);
	FUNC1();
	if (v->g->cflags & REG_EXPECT)
	{
		FUNC3(v->details != NULL);
		if (cold != NULL)
			v->details->rm_extend.rm_so = FUNC2(cold);
		else
			v->details->rm_extend.rm_so = FUNC2(v->stop);
		v->details->rm_extend.rm_eo = FUNC2(v->stop); /* unknown */
	}
	return ret;
}