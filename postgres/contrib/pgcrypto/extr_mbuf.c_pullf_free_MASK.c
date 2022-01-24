#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int buflen; struct TYPE_7__* buf; int /*<<< orphan*/  priv; TYPE_1__* op; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ PullFilter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(PullFilter *pf)
{
	if (pf->op->free)
		pf->op->free(pf->priv);

	if (pf->buf)
	{
		FUNC1(pf->buf, 0, pf->buflen);
		FUNC0(pf->buf);
	}

	FUNC1(pf, 0, sizeof(*pf));
	FUNC0(pf);
}