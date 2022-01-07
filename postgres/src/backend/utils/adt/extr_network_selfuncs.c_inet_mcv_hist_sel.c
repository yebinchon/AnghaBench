
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double float4 ;
typedef double Selectivity ;
typedef int Datum ;


 double inet_hist_value_sel (int *,int,int ,int) ;

__attribute__((used)) static Selectivity
inet_mcv_hist_sel(Datum *mcv_values, float4 *mcv_numbers, int mcv_nvalues,
      Datum *hist_values, int hist_nvalues,
      int opr_codenum)
{
 Selectivity selec = 0.0;
 int i;





 opr_codenum = -opr_codenum;

 for (i = 0; i < mcv_nvalues; i++)
 {
  selec += mcv_numbers[i] *
   inet_hist_value_sel(hist_values, hist_nvalues, mcv_values[i],
        opr_codenum);
 }
 return selec;
}
