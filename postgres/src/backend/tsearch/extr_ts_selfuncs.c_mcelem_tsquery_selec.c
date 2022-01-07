
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int text ;
typedef int float4 ;
struct TYPE_4__ {int frequency; int * element; } ;
typedef TYPE_1__ TextFreq ;
typedef int TSQuery ;
typedef int Selectivity ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int GETOPERAND (int ) ;
 int GETQUERY (int ) ;
 int VARATT_IS_COMPRESSED (int ) ;
 int VARATT_IS_EXTERNAL (int ) ;
 scalar_t__ palloc (int) ;
 int pfree (TYPE_1__*) ;
 int tsquery_opr_selec (int ,int ,TYPE_1__*,int,int ) ;
 int tsquery_opr_selec_no_stats (int ) ;

__attribute__((used)) static Selectivity
mcelem_tsquery_selec(TSQuery query, Datum *mcelem, int nmcelem,
      float4 *numbers, int nnumbers)
{
 float4 minfreq;
 TextFreq *lookup;
 Selectivity selec;
 int i;
 if (nnumbers != nmcelem + 2)
  return tsquery_opr_selec_no_stats(query);




 lookup = (TextFreq *) palloc(sizeof(TextFreq) * nmcelem);
 for (i = 0; i < nmcelem; i++)
 {




  Assert(!VARATT_IS_COMPRESSED(mcelem[i]) && !VARATT_IS_EXTERNAL(mcelem[i]));
  lookup[i].element = (text *) DatumGetPointer(mcelem[i]);
  lookup[i].frequency = numbers[i];
 }





 minfreq = numbers[nnumbers - 2];

 selec = tsquery_opr_selec(GETQUERY(query), GETOPERAND(query), lookup,
         nmcelem, minfreq);

 pfree(lookup);

 return selec;
}
