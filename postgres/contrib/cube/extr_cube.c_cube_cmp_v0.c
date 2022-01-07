
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int NDBOX ;


 int DIM (int *) ;
 int LL_COORD (int *,int) ;
 scalar_t__ Max (int,int) ;
 scalar_t__ Min (int,int) ;
 int UR_COORD (int *,int) ;

int32
cube_cmp_v0(NDBOX *a, NDBOX *b)
{
 int i;
 int dim;

 dim = Min(DIM(a), DIM(b));


 for (i = 0; i < dim; i++)
 {
  if (Min(LL_COORD(a, i), UR_COORD(a, i)) >
   Min(LL_COORD(b, i), UR_COORD(b, i)))
   return 1;
  if (Min(LL_COORD(a, i), UR_COORD(a, i)) <
   Min(LL_COORD(b, i), UR_COORD(b, i)))
   return -1;
 }
 for (i = 0; i < dim; i++)
 {
  if (Max(LL_COORD(a, i), UR_COORD(a, i)) >
   Max(LL_COORD(b, i), UR_COORD(b, i)))
   return 1;
  if (Max(LL_COORD(a, i), UR_COORD(a, i)) <
   Max(LL_COORD(b, i), UR_COORD(b, i)))
   return -1;
 }


 if (DIM(a) > DIM(b))
 {
  for (i = dim; i < DIM(a); i++)
  {
   if (Min(LL_COORD(a, i), UR_COORD(a, i)) > 0)
    return 1;
   if (Min(LL_COORD(a, i), UR_COORD(a, i)) < 0)
    return -1;
  }
  for (i = dim; i < DIM(a); i++)
  {
   if (Max(LL_COORD(a, i), UR_COORD(a, i)) > 0)
    return 1;
   if (Max(LL_COORD(a, i), UR_COORD(a, i)) < 0)
    return -1;
  }





  return 1;
 }
 if (DIM(a) < DIM(b))
 {
  for (i = dim; i < DIM(b); i++)
  {
   if (Min(LL_COORD(b, i), UR_COORD(b, i)) > 0)
    return -1;
   if (Min(LL_COORD(b, i), UR_COORD(b, i)) < 0)
    return 1;
  }
  for (i = dim; i < DIM(b); i++)
  {
   if (Max(LL_COORD(b, i), UR_COORD(b, i)) > 0)
    return -1;
   if (Max(LL_COORD(b, i), UR_COORD(b, i)) < 0)
    return 1;
  }





  return -1;
 }


 return 0;
}
