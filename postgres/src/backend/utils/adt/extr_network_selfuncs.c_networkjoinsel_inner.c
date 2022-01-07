
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int mcv2_slot ;
typedef int mcv1_slot ;
typedef int hist2_slot ;
typedef int hist1_slot ;
struct TYPE_9__ {int statsTuple; } ;
typedef TYPE_1__ VariableStatData ;
struct TYPE_11__ {int nvalues; int values; int numbers; } ;
struct TYPE_10__ {double stanullfrac; } ;
typedef double Selectivity ;
typedef int Oid ;
typedef TYPE_2__* Form_pg_statistic ;
typedef TYPE_3__ AttStatsSlot ;


 int ATTSTATSSLOT_NUMBERS ;
 int ATTSTATSSLOT_VALUES ;
 double DEFAULT_SEL (int ) ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int MAX_CONSIDERED_ELEMS ;
 int Min (int ,int ) ;
 int STATISTIC_KIND_HISTOGRAM ;
 int STATISTIC_KIND_MCV ;
 int free_attstatsslot (TYPE_3__*) ;
 int get_attstatsslot (TYPE_3__*,int ,int ,int ,int) ;
 double inet_hist_inclusion_join_sel (int ,int ,int ,int ,int) ;
 double inet_mcv_hist_sel (int ,int ,int,int ,int ,int) ;
 scalar_t__ inet_mcv_join_sel (int ,int ,int,int ,int ,int,int ) ;
 int inet_opr_codenum (int ) ;
 double mcv_population (int ,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static Selectivity
networkjoinsel_inner(Oid operator,
      VariableStatData *vardata1, VariableStatData *vardata2)
{
 Form_pg_statistic stats;
 double nullfrac1 = 0.0,
    nullfrac2 = 0.0;
 Selectivity selec = 0.0,
    sumcommon1 = 0.0,
    sumcommon2 = 0.0;
 bool mcv1_exists = 0,
    mcv2_exists = 0,
    hist1_exists = 0,
    hist2_exists = 0;
 int opr_codenum;
 int mcv1_length = 0,
    mcv2_length = 0;
 AttStatsSlot mcv1_slot;
 AttStatsSlot mcv2_slot;
 AttStatsSlot hist1_slot;
 AttStatsSlot hist2_slot;

 if (HeapTupleIsValid(vardata1->statsTuple))
 {
  stats = (Form_pg_statistic) GETSTRUCT(vardata1->statsTuple);
  nullfrac1 = stats->stanullfrac;

  mcv1_exists = get_attstatsslot(&mcv1_slot, vardata1->statsTuple,
            STATISTIC_KIND_MCV, InvalidOid,
            ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS);
  hist1_exists = get_attstatsslot(&hist1_slot, vardata1->statsTuple,
          STATISTIC_KIND_HISTOGRAM, InvalidOid,
          ATTSTATSSLOT_VALUES);

  mcv1_length = Min(mcv1_slot.nvalues, MAX_CONSIDERED_ELEMS);
  if (mcv1_exists)
   sumcommon1 = mcv_population(mcv1_slot.numbers, mcv1_length);
 }
 else
 {
  memset(&mcv1_slot, 0, sizeof(mcv1_slot));
  memset(&hist1_slot, 0, sizeof(hist1_slot));
 }

 if (HeapTupleIsValid(vardata2->statsTuple))
 {
  stats = (Form_pg_statistic) GETSTRUCT(vardata2->statsTuple);
  nullfrac2 = stats->stanullfrac;

  mcv2_exists = get_attstatsslot(&mcv2_slot, vardata2->statsTuple,
            STATISTIC_KIND_MCV, InvalidOid,
            ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS);
  hist2_exists = get_attstatsslot(&hist2_slot, vardata2->statsTuple,
          STATISTIC_KIND_HISTOGRAM, InvalidOid,
          ATTSTATSSLOT_VALUES);

  mcv2_length = Min(mcv2_slot.nvalues, MAX_CONSIDERED_ELEMS);
  if (mcv2_exists)
   sumcommon2 = mcv_population(mcv2_slot.numbers, mcv2_length);
 }
 else
 {
  memset(&mcv2_slot, 0, sizeof(mcv2_slot));
  memset(&hist2_slot, 0, sizeof(hist2_slot));
 }

 opr_codenum = inet_opr_codenum(operator);




 if (mcv1_exists && mcv2_exists)
  selec += inet_mcv_join_sel(mcv1_slot.values, mcv1_slot.numbers,
           mcv1_length,
           mcv2_slot.values, mcv2_slot.numbers,
           mcv2_length,
           operator);






 if (mcv1_exists && hist2_exists)
  selec += (1.0 - nullfrac2 - sumcommon2) *
   inet_mcv_hist_sel(mcv1_slot.values, mcv1_slot.numbers, mcv1_length,
         hist2_slot.values, hist2_slot.nvalues,
         opr_codenum);
 if (mcv2_exists && hist1_exists)
  selec += (1.0 - nullfrac1 - sumcommon1) *
   inet_mcv_hist_sel(mcv2_slot.values, mcv2_slot.numbers, mcv2_length,
         hist1_slot.values, hist1_slot.nvalues,
         -opr_codenum);





 if (hist1_exists && hist2_exists)
  selec += (1.0 - nullfrac1 - sumcommon1) *
   (1.0 - nullfrac2 - sumcommon2) *
   inet_hist_inclusion_join_sel(hist1_slot.values, hist1_slot.nvalues,
           hist2_slot.values, hist2_slot.nvalues,
           opr_codenum);





 if ((!mcv1_exists && !hist1_exists) || (!mcv2_exists && !hist2_exists))
  selec = (1.0 - nullfrac1) * (1.0 - nullfrac2) * DEFAULT_SEL(operator);


 free_attstatsslot(&mcv1_slot);
 free_attstatsslot(&mcv2_slot);
 free_attstatsslot(&hist1_slot);
 free_attstatsslot(&hist2_slot);

 return selec;
}
