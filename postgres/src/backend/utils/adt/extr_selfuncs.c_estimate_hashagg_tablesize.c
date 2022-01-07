
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int numAggs; scalar_t__ transitionSpace; } ;
struct TYPE_7__ {TYPE_1__* pathtarget; } ;
struct TYPE_6__ {int width; } ;
typedef double Size ;
typedef TYPE_2__ Path ;
typedef TYPE_3__ AggClauseCosts ;


 double MAXALIGN (int ) ;
 int SizeofMinimalTupleHeader ;
 scalar_t__ hash_agg_entry_size (int ) ;

double
estimate_hashagg_tablesize(Path *path, const AggClauseCosts *agg_costs,
         double dNumGroups)
{
 Size hashentrysize;


 hashentrysize = MAXALIGN(path->pathtarget->width) +
  MAXALIGN(SizeofMinimalTupleHeader);


 hashentrysize += agg_costs->transitionSpace;

 hashentrysize += hash_agg_entry_size(agg_costs->numAggs);







 return hashentrysize * dNumGroups;
}
