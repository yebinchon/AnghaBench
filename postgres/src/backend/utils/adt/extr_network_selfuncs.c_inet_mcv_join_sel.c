
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double float4 ;
typedef double Selectivity ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 scalar_t__ DatumGetBool (int ) ;
 int FunctionCall2 (int *,int ,int ) ;
 int fmgr_info (int ,int *) ;
 int get_opcode (int ) ;

__attribute__((used)) static Selectivity
inet_mcv_join_sel(Datum *mcv1_values, float4 *mcv1_numbers, int mcv1_nvalues,
      Datum *mcv2_values, float4 *mcv2_numbers, int mcv2_nvalues,
      Oid operator)
{
 Selectivity selec = 0.0;
 FmgrInfo proc;
 int i,
    j;

 fmgr_info(get_opcode(operator), &proc);

 for (i = 0; i < mcv1_nvalues; i++)
 {
  for (j = 0; j < mcv2_nvalues; j++)
   if (DatumGetBool(FunctionCall2(&proc,
             mcv1_values[i],
             mcv2_values[j])))
    selec += mcv1_numbers[i] * mcv2_numbers[j];
 }
 return selec;
}
