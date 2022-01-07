
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ attstattarget; int tupattnum; scalar_t__ minrows; struct TYPE_13__* attr; int * compute_stats; TYPE_3__* attrtype; int * statypalign; int * statypbyval; int * statyplen; int attrtypid; int * statypid; int anl_context; int attcollation; int attrcollid; int atttypmod; int attrtypmod; int atttypid; scalar_t__ attisdropped; } ;
typedef TYPE_1__ VacAttrStats ;
struct TYPE_15__ {int typanalyze; int typalign; int typbyval; int typlen; } ;
struct TYPE_14__ {int * rd_indcollation; int rd_att; } ;
typedef TYPE_2__* Relation ;
typedef int Node ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_type ;
typedef TYPE_1__* Form_pg_attribute ;


 int ATTRIBUTE_FIXED_PART_SIZE ;
 int DatumGetBool (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidFunctionCall1 (int ,int ) ;
 scalar_t__ OidIsValid (int ) ;
 int PointerGetDatum (TYPE_1__*) ;
 int STATISTIC_NUM_SLOTS ;
 int SearchSysCacheCopy1 (int ,int ) ;
 int TYPEOID ;
 TYPE_1__* TupleDescAttr (int ,int) ;
 int anl_context ;
 int elog (int ,char*,int ) ;
 int exprCollation (int *) ;
 int exprType (int *) ;
 int exprTypmod (int *) ;
 int heap_freetuple (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ palloc (int ) ;
 scalar_t__ palloc0 (int) ;
 int pfree (TYPE_1__*) ;
 int std_typanalyze (TYPE_1__*) ;

__attribute__((used)) static VacAttrStats *
examine_attribute(Relation onerel, int attnum, Node *index_expr)
{
 Form_pg_attribute attr = TupleDescAttr(onerel->rd_att, attnum - 1);
 HeapTuple typtuple;
 VacAttrStats *stats;
 int i;
 bool ok;


 if (attr->attisdropped)
  return ((void*)0);


 if (attr->attstattarget == 0)
  return ((void*)0);





 stats = (VacAttrStats *) palloc0(sizeof(VacAttrStats));
 stats->attr = (Form_pg_attribute) palloc(ATTRIBUTE_FIXED_PART_SIZE);
 memcpy(stats->attr, attr, ATTRIBUTE_FIXED_PART_SIZE);
 if (index_expr)
 {
  stats->attrtypid = exprType(index_expr);
  stats->attrtypmod = exprTypmod(index_expr);






  if (OidIsValid(onerel->rd_indcollation[attnum - 1]))
   stats->attrcollid = onerel->rd_indcollation[attnum - 1];
  else
   stats->attrcollid = exprCollation(index_expr);
 }
 else
 {
  stats->attrtypid = attr->atttypid;
  stats->attrtypmod = attr->atttypmod;
  stats->attrcollid = attr->attcollation;
 }

 typtuple = SearchSysCacheCopy1(TYPEOID,
           ObjectIdGetDatum(stats->attrtypid));
 if (!HeapTupleIsValid(typtuple))
  elog(ERROR, "cache lookup failed for type %u", stats->attrtypid);
 stats->attrtype = (Form_pg_type) GETSTRUCT(typtuple);
 stats->anl_context = anl_context;
 stats->tupattnum = attnum;






 for (i = 0; i < STATISTIC_NUM_SLOTS; i++)
 {
  stats->statypid[i] = stats->attrtypid;
  stats->statyplen[i] = stats->attrtype->typlen;
  stats->statypbyval[i] = stats->attrtype->typbyval;
  stats->statypalign[i] = stats->attrtype->typalign;
 }





 if (OidIsValid(stats->attrtype->typanalyze))
  ok = DatumGetBool(OidFunctionCall1(stats->attrtype->typanalyze,
             PointerGetDatum(stats)));
 else
  ok = std_typanalyze(stats);

 if (!ok || stats->compute_stats == ((void*)0) || stats->minrows <= 0)
 {
  heap_freetuple(typtuple);
  pfree(stats->attr);
  pfree(stats);
  return ((void*)0);
 }

 return stats;
}
