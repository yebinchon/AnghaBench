
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {scalar_t__ tsm_state; } ;
struct TYPE_4__ {double millis; scalar_t__ doneblocks; int lt; int seed; } ;
typedef TYPE_1__ SystemTimeSamplerData ;
typedef TYPE_2__ SampleScanState ;
typedef int Datum ;


 double DatumGetFloat8 (int ) ;
 int ERRCODE_INVALID_TABLESAMPLE_ARGUMENT ;
 int ERROR ;
 int InvalidOffsetNumber ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ isnan (double) ;

__attribute__((used)) static void
system_time_beginsamplescan(SampleScanState *node,
       Datum *params,
       int nparams,
       uint32 seed)
{
 SystemTimeSamplerData *sampler = (SystemTimeSamplerData *) node->tsm_state;
 double millis = DatumGetFloat8(params[0]);

 if (millis < 0 || isnan(millis))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TABLESAMPLE_ARGUMENT),
     errmsg("sample collection time must not be negative")));

 sampler->seed = seed;
 sampler->millis = millis;
 sampler->lt = InvalidOffsetNumber;
 sampler->doneblocks = 0;


}
