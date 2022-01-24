#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ tg_oldtable; TYPE_2__* tg_relation; TYPE_1__* tg_trigger; scalar_t__ tg_newtable; } ;
typedef  TYPE_4__ TriggerData ;
struct TYPE_11__ {void* enrtuples; void* enrtype; int /*<<< orphan*/ * tupdesc; int /*<<< orphan*/  reliddesc; int /*<<< orphan*/  name; } ;
struct TYPE_13__ {scalar_t__ reldata; TYPE_3__ md; } ;
struct TYPE_10__ {int /*<<< orphan*/  rd_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  tgoldtable; int /*<<< orphan*/  tgnewtable; } ;
typedef  int /*<<< orphan*/  EphemeralNamedRelationData ;
typedef  TYPE_5__* EphemeralNamedRelation ;

/* Variables and functions */
 void* ENR_NAMED_TUPLESTORE ; 
 int SPI_ERROR_ARGUMENT ; 
 int SPI_OK_REL_REGISTER ; 
 int SPI_OK_TD_REGISTER ; 
 int FUNC0 (TYPE_5__*) ; 
 TYPE_5__* FUNC1 (int) ; 
 void* FUNC2 (scalar_t__) ; 

int
FUNC3(TriggerData *tdata)
{
	if (tdata == NULL)
		return SPI_ERROR_ARGUMENT;

	if (tdata->tg_newtable)
	{
		EphemeralNamedRelation enr =
		FUNC1(sizeof(EphemeralNamedRelationData));
		int			rc;

		enr->md.name = tdata->tg_trigger->tgnewtable;
		enr->md.reliddesc = tdata->tg_relation->rd_id;
		enr->md.tupdesc = NULL;
		enr->md.enrtype = ENR_NAMED_TUPLESTORE;
		enr->md.enrtuples = FUNC2(tdata->tg_newtable);
		enr->reldata = tdata->tg_newtable;
		rc = FUNC0(enr);
		if (rc != SPI_OK_REL_REGISTER)
			return rc;
	}

	if (tdata->tg_oldtable)
	{
		EphemeralNamedRelation enr =
		FUNC1(sizeof(EphemeralNamedRelationData));
		int			rc;

		enr->md.name = tdata->tg_trigger->tgoldtable;
		enr->md.reliddesc = tdata->tg_relation->rd_id;
		enr->md.tupdesc = NULL;
		enr->md.enrtype = ENR_NAMED_TUPLESTORE;
		enr->md.enrtuples = FUNC2(tdata->tg_oldtable);
		enr->reldata = tdata->tg_oldtable;
		rc = FUNC0(enr);
		if (rc != SPI_OK_REL_REGISTER)
			return rc;
	}

	return SPI_OK_TD_REGISTER;
}