#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  eoh_context; } ;
struct TYPE_5__ {int* dnulls; int dvalueslen; int nelems; int /*<<< orphan*/ * dvalues; int /*<<< orphan*/  fvalue; int /*<<< orphan*/  typalign; int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typlen; int /*<<< orphan*/  element_type; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ ExpandedArrayHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int**,int*) ; 

void
FUNC3(ExpandedArrayHeader *eah)
{
	if (eah->dvalues == NULL)
	{
		MemoryContext oldcxt = FUNC1(eah->hdr.eoh_context);
		Datum	   *dvalues;
		bool	   *dnulls;
		int			nelems;

		dnulls = NULL;
		FUNC2(eah->fvalue,
						  eah->element_type,
						  eah->typlen, eah->typbyval, eah->typalign,
						  &dvalues,
						  FUNC0(eah->fvalue) ? &dnulls : NULL,
						  &nelems);

		/*
		 * Update header only after successful completion of this step.  If
		 * deconstruct_array fails partway through, worst consequence is some
		 * leaked memory in the object's context.  If the caller fails at a
		 * later point, that's fine, since the deconstructed representation is
		 * valid anyhow.
		 */
		eah->dvalues = dvalues;
		eah->dnulls = dnulls;
		eah->dvalueslen = eah->nelems = nelems;
		FUNC1(oldcxt);
	}
}