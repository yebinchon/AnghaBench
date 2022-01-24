#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* TupleDesc ;
struct TYPE_16__ {scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attisdropped; } ;
struct TYPE_12__ {int natts; TYPE_4__* atts; TYPE_3__* recdesc; } ;
struct TYPE_13__ {TYPE_1__ tuple; } ;
struct TYPE_15__ {scalar_t__ func; scalar_t__ typoid; scalar_t__ typmod; int /*<<< orphan*/  mcxt; TYPE_2__ u; } ;
struct TYPE_14__ {int natts; } ;
typedef  int /*<<< orphan*/  PLyProcedure ;
typedef  TYPE_4__ PLyDatumToOb ;
typedef  TYPE_5__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PLyDict_FromComposite ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ RECORDOID ; 
 TYPE_5__* FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

void
FUNC5(PLyDatumToOb *arg, TupleDesc desc, PLyProcedure *proc)
{
	int			i;

	/* We should be working on a previously-set-up struct */
	FUNC0(arg->func == PLyDict_FromComposite);

	/* Save pointer to tupdesc, but only if this is an anonymous record type */
	if (arg->typoid == RECORDOID && arg->typmod < 0)
		arg->u.tuple.recdesc = desc;

	/* (Re)allocate atts array as needed */
	if (arg->u.tuple.natts != desc->natts)
	{
		if (arg->u.tuple.atts)
			FUNC4(arg->u.tuple.atts);
		arg->u.tuple.natts = desc->natts;
		arg->u.tuple.atts = (PLyDatumToOb *)
			FUNC1(arg->mcxt,
								   desc->natts * sizeof(PLyDatumToOb));
	}

	/* Fill the atts entries, except for dropped columns */
	for (i = 0; i < desc->natts; i++)
	{
		Form_pg_attribute attr = FUNC3(desc, i);
		PLyDatumToOb *att = &arg->u.tuple.atts[i];

		if (attr->attisdropped)
			continue;

		if (att->typoid == attr->atttypid && att->typmod == attr->atttypmod)
			continue;			/* already set up this entry */

		FUNC2(att, arg->mcxt,
							 attr->atttypid, attr->atttypmod,
							 proc);
	}
}