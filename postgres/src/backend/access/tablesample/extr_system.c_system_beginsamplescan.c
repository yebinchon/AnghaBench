
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int uint32 ;
struct TYPE_5__ {int use_bulkread; int use_pagemode; scalar_t__ tsm_state; } ;
struct TYPE_4__ {int lt; scalar_t__ nextblock; int seed; scalar_t__ cutoff; } ;
typedef TYPE_1__ SystemSamplerData ;
typedef TYPE_2__ SampleScanState ;
typedef int Datum ;


 double DatumGetFloat4 (int ) ;
 int ERRCODE_INVALID_TABLESAMPLE_ARGUMENT ;
 int ERROR ;
 int InvalidOffsetNumber ;
 scalar_t__ PG_UINT32_MAX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ isnan (double) ;
 double rint (double) ;

__attribute__((used)) static void
system_beginsamplescan(SampleScanState *node,
        Datum *params,
        int nparams,
        uint32 seed)
{
 SystemSamplerData *sampler = (SystemSamplerData *) node->tsm_state;
 double percent = DatumGetFloat4(params[0]);
 double dcutoff;

 if (percent < 0 || percent > 100 || isnan(percent))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TABLESAMPLE_ARGUMENT),
     errmsg("sample percentage must be between 0 and 100")));






 dcutoff = rint(((double) PG_UINT32_MAX + 1) * percent / 100);
 sampler->cutoff = (uint64) dcutoff;
 sampler->seed = seed;
 sampler->nextblock = 0;
 sampler->lt = InvalidOffsetNumber;







 node->use_bulkread = (percent >= 1);
 node->use_pagemode = 1;
}
