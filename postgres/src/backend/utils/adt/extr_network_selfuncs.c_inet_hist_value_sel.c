
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inet ;
typedef double Selectivity ;
typedef int Datum ;


 int * DatumGetInetPP (int ) ;
 int MAX_CONSIDERED_ELEMS ;
 int Max (int,int) ;
 int inet_hist_match_divider (int *,int *,int) ;
 int inet_inclusion_cmp (int *,int *,int) ;
 double pow (double,int ) ;

__attribute__((used)) static Selectivity
inet_hist_value_sel(Datum *values, int nvalues, Datum constvalue,
     int opr_codenum)
{
 Selectivity match = 0.0;
 inet *query,
      *left,
      *right;
 int i,
    k,
    n;
 int left_order,
    right_order,
    left_divider,
    right_divider;


 if (nvalues <= 1)
  return 0.0;


 k = (nvalues - 2) / MAX_CONSIDERED_ELEMS + 1;

 query = DatumGetInetPP(constvalue);


 left = DatumGetInetPP(values[0]);
 left_order = inet_inclusion_cmp(left, query, opr_codenum);

 n = 0;
 for (i = k; i < nvalues; i += k)
 {

  right = DatumGetInetPP(values[i]);
  right_order = inet_inclusion_cmp(right, query, opr_codenum);

  if (left_order == 0 && right_order == 0)
  {

   match += 1.0;
  }
  else if ((left_order <= 0 && right_order >= 0) ||
     (left_order >= 0 && right_order <= 0))
  {

   left_divider = inet_hist_match_divider(left, query, opr_codenum);
   right_divider = inet_hist_match_divider(right, query, opr_codenum);

   if (left_divider >= 0 || right_divider >= 0)
    match += 1.0 / pow(2.0, Max(left_divider, right_divider));
  }


  left = right;
  left_order = right_order;


  n++;
 }

 return match / n;
}
