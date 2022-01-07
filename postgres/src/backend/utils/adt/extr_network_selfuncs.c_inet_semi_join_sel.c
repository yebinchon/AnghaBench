
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double Selectivity ;
typedef int FmgrInfo ;
typedef int Datum ;


 scalar_t__ DatumGetBool (int ) ;
 int FunctionCall2 (int *,int ,int ) ;
 double Min (double,double) ;
 double inet_hist_value_sel (int *,int,int ,int) ;

__attribute__((used)) static Selectivity
inet_semi_join_sel(Datum lhs_value,
       bool mcv_exists, Datum *mcv_values, int mcv_nvalues,
       bool hist_exists, Datum *hist_values, int hist_nvalues,
       double hist_weight,
       FmgrInfo *proc, int opr_codenum)
{
 if (mcv_exists)
 {
  int i;

  for (i = 0; i < mcv_nvalues; i++)
  {
   if (DatumGetBool(FunctionCall2(proc,
             lhs_value,
             mcv_values[i])))
    return 1.0;
  }
 }

 if (hist_exists && hist_weight > 0)
 {
  Selectivity hist_selec;


  hist_selec = inet_hist_value_sel(hist_values, hist_nvalues,
           lhs_value, -opr_codenum);

  if (hist_selec > 0)
   return Min(1.0, hist_weight * hist_selec);
 }

 return 0.0;
}
