
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double Selectivity ;
typedef int Datum ;


 int MAX_CONSIDERED_ELEMS ;
 scalar_t__ inet_hist_value_sel (int *,int,int ,int) ;

__attribute__((used)) static Selectivity
inet_hist_inclusion_join_sel(Datum *hist1_values, int hist1_nvalues,
        Datum *hist2_values, int hist2_nvalues,
        int opr_codenum)
{
 double match = 0.0;
 int i,
    k,
    n;

 if (hist2_nvalues <= 2)
  return 0.0;


 k = (hist2_nvalues - 3) / MAX_CONSIDERED_ELEMS + 1;

 n = 0;
 for (i = 1; i < hist2_nvalues - 1; i += k)
 {
  match += inet_hist_value_sel(hist1_values, hist1_nvalues,
          hist2_values[i], opr_codenum);
  n++;
 }

 return match / n;
}
