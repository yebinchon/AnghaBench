
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int minrows; int compute_stats; TYPE_2__* extra_data; int attrtypid; TYPE_3__* attr; } ;
typedef TYPE_1__ VacAttrStats ;
struct TYPE_7__ {int attstattarget; } ;
struct TYPE_6__ {void* ltopr; int eqfunc; void* eqopr; } ;
typedef TYPE_2__ StdAnalyzeData ;
typedef void* Oid ;
typedef TYPE_3__* Form_pg_attribute ;


 int InvalidOid ;
 scalar_t__ OidIsValid (void*) ;
 int compute_distinct_stats ;
 int compute_scalar_stats ;
 int compute_trivial_stats ;
 int default_statistics_target ;
 int get_opcode (void*) ;
 int get_sort_group_operators (int ,int,int,int,void**,void**,int *,int *) ;
 scalar_t__ palloc (int) ;

bool
std_typanalyze(VacAttrStats *stats)
{
 Form_pg_attribute attr = stats->attr;
 Oid ltopr;
 Oid eqopr;
 StdAnalyzeData *mystats;



 if (attr->attstattarget < 0)
  attr->attstattarget = default_statistics_target;


 get_sort_group_operators(stats->attrtypid,
        0, 0, 0,
        &ltopr, &eqopr, ((void*)0),
        ((void*)0));


 mystats = (StdAnalyzeData *) palloc(sizeof(StdAnalyzeData));
 mystats->eqopr = eqopr;
 mystats->eqfunc = OidIsValid(eqopr) ? get_opcode(eqopr) : InvalidOid;
 mystats->ltopr = ltopr;
 stats->extra_data = mystats;




 if (OidIsValid(eqopr) && OidIsValid(ltopr))
 {

  stats->compute_stats = compute_scalar_stats;
  stats->minrows = 300 * attr->attstattarget;
 }
 else if (OidIsValid(eqopr))
 {

  stats->compute_stats = compute_distinct_stats;

  stats->minrows = 300 * attr->attstattarget;
 }
 else
 {

  stats->compute_stats = compute_trivial_stats;

  stats->minrows = 300 * attr->attstattarget;
 }

 return 1;
}
