
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double prop_card; int full_card; int abbr_card; } ;
typedef TYPE_1__ VarStringSortSupport ;
struct TYPE_5__ {int abbreviate; scalar_t__ ssup_extra; } ;
typedef TYPE_2__* SortSupport ;


 int Assert (int ) ;
 int LOG ;
 int elog (int ,char*,int,double,double,double,...) ;
 double estimateHyperLogLog (int *) ;
 scalar_t__ trace_sort ;

__attribute__((used)) static bool
varstr_abbrev_abort(int memtupcount, SortSupport ssup)
{
 VarStringSortSupport *sss = (VarStringSortSupport *) ssup->ssup_extra;
 double abbrev_distinct,
    key_distinct;

 Assert(ssup->abbreviate);


 if (memtupcount < 100)
  return 0;

 abbrev_distinct = estimateHyperLogLog(&sss->abbr_card);
 key_distinct = estimateHyperLogLog(&sss->full_card);






 if (abbrev_distinct <= 1.0)
  abbrev_distinct = 1.0;

 if (key_distinct <= 1.0)
  key_distinct = 1.0;
 if (abbrev_distinct > key_distinct * sss->prop_card)
 {
  if (memtupcount > 10000)
   sss->prop_card *= 0.65;

  return 0;
 }
 return 1;
}
