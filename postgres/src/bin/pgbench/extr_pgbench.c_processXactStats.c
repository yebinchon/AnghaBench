
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int instr_time ;
struct TYPE_12__ {int cnt; } ;
struct TYPE_11__ {TYPE_8__ stats; } ;
struct TYPE_10__ {double txn_scheduled; size_t use_file; int cnt; int txn_begin; } ;
struct TYPE_9__ {TYPE_8__ stats; int latency_late; } ;
typedef TYPE_1__ TState ;
typedef int StatsData ;
typedef TYPE_2__ CState ;


 double INSTR_TIME_GET_MICROSEC (int ) ;
 int INSTR_TIME_SET_CURRENT_LAZY (int ) ;
 int accumStats (TYPE_8__*,int,double,double) ;
 int doLog (TYPE_1__*,TYPE_2__*,int *,int,double,double) ;
 double latency_limit ;
 scalar_t__ per_script_stats ;
 scalar_t__ progress ;
 TYPE_3__* sql_script ;
 scalar_t__ throttle_delay ;
 scalar_t__ use_log ;

__attribute__((used)) static void
processXactStats(TState *thread, CState *st, instr_time *now,
     bool skipped, StatsData *agg)
{
 double latency = 0.0,
    lag = 0.0;
 bool thread_details = progress || throttle_delay || latency_limit,
    detailed = thread_details || use_log || per_script_stats;

 if (detailed && !skipped)
 {
  INSTR_TIME_SET_CURRENT_LAZY(*now);


  latency = INSTR_TIME_GET_MICROSEC(*now) - st->txn_scheduled;
  lag = INSTR_TIME_GET_MICROSEC(st->txn_begin) - st->txn_scheduled;
 }

 if (thread_details)
 {

  accumStats(&thread->stats, skipped, latency, lag);


  if (latency_limit && latency > latency_limit)
   thread->latency_late++;
 }
 else
 {

  thread->stats.cnt++;
 }


 st->cnt++;

 if (use_log)
  doLog(thread, st, agg, skipped, latency, lag);


 if (per_script_stats)
  accumStats(&sql_script[st->use_file].stats, skipped, latency, lag);
}
