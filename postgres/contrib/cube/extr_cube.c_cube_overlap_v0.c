
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NDBOX ;


 int DIM (int *) ;
 int LL_COORD (int *,int) ;
 scalar_t__ Max (int ,int ) ;
 scalar_t__ Min (int ,int ) ;
 int UR_COORD (int *,int) ;

bool
cube_overlap_v0(NDBOX *a, NDBOX *b)
{
 int i;

 if ((a == ((void*)0)) || (b == ((void*)0)))
  return 0;


 if (DIM(a) < DIM(b))
 {
  NDBOX *tmp = b;

  b = a;
  a = tmp;
 }


 for (i = 0; i < DIM(b); i++)
 {
  if (Min(LL_COORD(a, i), UR_COORD(a, i)) > Max(LL_COORD(b, i), UR_COORD(b, i)))
   return 0;
  if (Max(LL_COORD(a, i), UR_COORD(a, i)) < Min(LL_COORD(b, i), UR_COORD(b, i)))
   return 0;
 }


 for (i = DIM(b); i < DIM(a); i++)
 {
  if (Min(LL_COORD(a, i), UR_COORD(a, i)) > 0)
   return 0;
  if (Max(LL_COORD(a, i), UR_COORD(a, i)) < 0)
   return 0;
 }

 return 1;
}
