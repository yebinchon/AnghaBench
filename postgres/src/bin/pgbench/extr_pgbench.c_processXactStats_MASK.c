#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_12__ {int /*<<< orphan*/  cnt; } ;
struct TYPE_11__ {TYPE_8__ stats; } ;
struct TYPE_10__ {double txn_scheduled; size_t use_file; int /*<<< orphan*/  cnt; int /*<<< orphan*/  txn_begin; } ;
struct TYPE_9__ {TYPE_8__ stats; int /*<<< orphan*/  latency_late; } ;
typedef  TYPE_1__ TState ;
typedef  int /*<<< orphan*/  StatsData ;
typedef  TYPE_2__ CState ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int,double,double) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int,double,double) ; 
 double latency_limit ; 
 scalar_t__ per_script_stats ; 
 scalar_t__ progress ; 
 TYPE_3__* sql_script ; 
 scalar_t__ throttle_delay ; 
 scalar_t__ use_log ; 

__attribute__((used)) static void
FUNC4(TState *thread, CState *st, instr_time *now,
				 bool skipped, StatsData *agg)
{
	double		latency = 0.0,
				lag = 0.0;
	bool		thread_details = progress || throttle_delay || latency_limit,
				detailed = thread_details || use_log || per_script_stats;

	if (detailed && !skipped)
	{
		FUNC1(*now);

		/* compute latency & lag */
		latency = FUNC0(*now) - st->txn_scheduled;
		lag = FUNC0(st->txn_begin) - st->txn_scheduled;
	}

	if (thread_details)
	{
		/* keep detailed thread stats */
		FUNC2(&thread->stats, skipped, latency, lag);

		/* count transactions over the latency limit, if needed */
		if (latency_limit && latency > latency_limit)
			thread->latency_late++;
	}
	else
	{
		/* no detailed stats, just count */
		thread->stats.cnt++;
	}

	/* client stat is just counting */
	st->cnt++;

	if (use_log)
		FUNC3(thread, st, agg, skipped, latency, lag);

	/* XXX could use a mutex here, but we choose not to */
	if (per_script_stats)
		FUNC2(&sql_script[st->use_file].stats, skipped, latency, lag);
}