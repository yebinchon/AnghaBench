
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
typedef int float4 ;
struct TYPE_3__ {scalar_t__ type; int val; int left; } ;
typedef int Selectivity ;
typedef TYPE_1__ ITEM ;
typedef int Datum ;


 int CLAMP_PROBABILITY (int) ;
 int DEFAULT_EQ_SEL ;
 int ERROR ;
 int Min (int ,int) ;
 scalar_t__ OPR ;
 scalar_t__ VAL ;
 scalar_t__ bsearch (int*,int *,int,int,int ) ;
 int check_stack_depth () ;
 int compare_val_int4 ;
 int elog (int ,char*,scalar_t__) ;

__attribute__((used)) static Selectivity
int_query_opr_selec(ITEM *item, Datum *mcelems, float4 *mcefreqs,
     int nmcelems, float4 minfreq)
{
 Selectivity selec;


 check_stack_depth();

 if (item->type == VAL)
 {
  Datum *searchres;

  if (mcelems == ((void*)0))
   return (Selectivity) DEFAULT_EQ_SEL;

  searchres = (Datum *) bsearch(&item->val, mcelems, nmcelems,
           sizeof(Datum), compare_val_int4);
  if (searchres)
  {




   selec = mcefreqs[searchres - mcelems];
  }
  else
  {




   selec = Min(DEFAULT_EQ_SEL, minfreq / 2);
  }
 }
 else if (item->type == OPR)
 {

  Selectivity s1,
     s2;

  s1 = int_query_opr_selec(item - 1, mcelems, mcefreqs, nmcelems,
         minfreq);
  switch (item->val)
  {
   case (int32) '!':
    selec = 1.0 - s1;
    break;

   case (int32) '&':
    s2 = int_query_opr_selec(item + item->left, mcelems, mcefreqs,
           nmcelems, minfreq);
    selec = s1 * s2;
    break;

   case (int32) '|':
    s2 = int_query_opr_selec(item + item->left, mcelems, mcefreqs,
           nmcelems, minfreq);
    selec = s1 + s2 - s1 * s2;
    break;

   default:
    elog(ERROR, "unrecognized operator: %d", item->val);
    selec = 0;
    break;
  }
 }
 else
 {
  elog(ERROR, "unrecognized int query item type: %u", item->type);
  selec = 0;
 }


 CLAMP_PROBABILITY(selec);

 return selec;
}
