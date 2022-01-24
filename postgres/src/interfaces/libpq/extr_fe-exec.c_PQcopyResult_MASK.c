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
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int resultInitialized; int /*<<< orphan*/  passThrough; int /*<<< orphan*/  (* proc ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {TYPE_2__* dest; TYPE_2__ const* src; } ;
struct TYPE_14__ {int numAttributes; int ntups; scalar_t__ nEvents; TYPE_5__* events; int /*<<< orphan*/  memorySize; int /*<<< orphan*/  noticeHooks; TYPE_1__** tuples; int /*<<< orphan*/  attDescs; int /*<<< orphan*/  cmdStatus; int /*<<< orphan*/  client_encoding; } ;
struct TYPE_13__ {int /*<<< orphan*/  len; int /*<<< orphan*/  value; } ;
typedef  TYPE_2__ PGresult ;
typedef  TYPE_3__ PGEventResultCopy ;

/* Variables and functions */
 int /*<<< orphan*/  PGEVT_RESULTCOPY ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int PG_COPYRES_ATTRS ; 
 int PG_COPYRES_EVENTS ; 
 int PG_COPYRES_NOTICEHOOKS ; 
 int PG_COPYRES_TUPLES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 

PGresult *
FUNC7(const PGresult *src, int flags)
{
	PGresult   *dest;
	int			i;

	if (!src)
		return NULL;

	dest = FUNC1(NULL, PGRES_TUPLES_OK);
	if (!dest)
		return NULL;

	/* Always copy these over.  Is cmdStatus really useful here? */
	dest->client_encoding = src->client_encoding;
	FUNC5(dest->cmdStatus, src->cmdStatus);

	/* Wants attrs? */
	if (flags & (PG_COPYRES_ATTRS | PG_COPYRES_TUPLES))
	{
		if (!FUNC2(dest, src->numAttributes, src->attDescs))
		{
			FUNC0(dest);
			return NULL;
		}
	}

	/* Wants to copy tuples? */
	if (flags & PG_COPYRES_TUPLES)
	{
		int			tup,
					field;

		for (tup = 0; tup < src->ntups; tup++)
		{
			for (field = 0; field < src->numAttributes; field++)
			{
				if (!FUNC3(dest, tup, field,
								src->tuples[tup][field].value,
								src->tuples[tup][field].len))
				{
					FUNC0(dest);
					return NULL;
				}
			}
		}
	}

	/* Wants to copy notice hooks? */
	if (flags & PG_COPYRES_NOTICEHOOKS)
		dest->noticeHooks = src->noticeHooks;

	/* Wants to copy PGEvents? */
	if ((flags & PG_COPYRES_EVENTS) && src->nEvents > 0)
	{
		dest->events = FUNC4(src->events, src->nEvents,
								 &dest->memorySize);
		if (!dest->events)
		{
			FUNC0(dest);
			return NULL;
		}
		dest->nEvents = src->nEvents;
	}

	/* Okay, trigger PGEVT_RESULTCOPY event */
	for (i = 0; i < dest->nEvents; i++)
	{
		if (src->events[i].resultInitialized)
		{
			PGEventResultCopy evt;

			evt.src = src;
			evt.dest = dest;
			if (!dest->events[i].proc(PGEVT_RESULTCOPY, &evt,
									  dest->events[i].passThrough))
			{
				FUNC0(dest);
				return NULL;
			}
			dest->events[i].resultInitialized = true;
		}
	}

	return dest;
}