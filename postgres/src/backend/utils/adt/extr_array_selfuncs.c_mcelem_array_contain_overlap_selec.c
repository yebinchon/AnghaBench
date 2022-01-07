
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int float4 ;
typedef int TypeCacheEntry ;
typedef double Selectivity ;
typedef scalar_t__ Oid ;
typedef int Datum ;


 int CLAMP_PROBABILITY (double) ;
 scalar_t__ DEFAULT_CONTAIN_SEL ;
 double Min (scalar_t__,int) ;
 scalar_t__ OID_ARRAY_CONTAINS_OP ;
 int element_compare (int *,int *,int *) ;
 int find_next_mcelem (int *,int,int ,int*,int *) ;
 int floor_log2 (int ) ;

__attribute__((used)) static Selectivity
mcelem_array_contain_overlap_selec(Datum *mcelem, int nmcelem,
           float4 *numbers, int nnumbers,
           Datum *array_data, int nitems,
           Oid operator, TypeCacheEntry *typentry)
{
 Selectivity selec,
    elem_selec;
 int mcelem_index,
    i;
 bool use_bsearch;
 float4 minfreq;







 if (nnumbers != nmcelem + 3)
 {
  numbers = ((void*)0);
  nnumbers = 0;
 }

 if (numbers)
 {

  minfreq = numbers[nmcelem];
 }
 else
 {

  minfreq = 2 * (float4) DEFAULT_CONTAIN_SEL;
 }


 if (nitems * floor_log2((uint32) nmcelem) < nmcelem + nitems)
  use_bsearch = 1;
 else
  use_bsearch = 0;

 if (operator == OID_ARRAY_CONTAINS_OP)
 {




  selec = 1.0;
 }
 else
 {




  selec = 0.0;
 }


 mcelem_index = 0;
 for (i = 0; i < nitems; i++)
 {
  bool match = 0;


  if (i > 0 &&
   element_compare(&array_data[i - 1], &array_data[i], typentry) == 0)
   continue;


  if (use_bsearch)
  {
   match = find_next_mcelem(mcelem, nmcelem, array_data[i],
          &mcelem_index, typentry);
  }
  else
  {
   while (mcelem_index < nmcelem)
   {
    int cmp = element_compare(&mcelem[mcelem_index],
              &array_data[i],
              typentry);

    if (cmp < 0)
     mcelem_index++;
    else
    {
     if (cmp == 0)
      match = 1;
     break;
    }
   }
  }

  if (match && numbers)
  {

   elem_selec = numbers[mcelem_index];
   mcelem_index++;
  }
  else
  {




   elem_selec = Min(DEFAULT_CONTAIN_SEL, minfreq / 2);
  }





  if (operator == OID_ARRAY_CONTAINS_OP)
   selec *= elem_selec;
  else
   selec = selec + elem_selec - selec * elem_selec;


  CLAMP_PROBABILITY(selec);
 }

 return selec;
}
