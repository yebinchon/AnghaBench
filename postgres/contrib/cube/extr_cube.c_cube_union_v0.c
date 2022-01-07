
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {void** x; } ;
typedef TYPE_1__ NDBOX ;


 int CUBE_SIZE (int) ;
 int DIM (TYPE_1__*) ;
 void* LL_COORD (TYPE_1__*,int) ;
 void* Max (void*,void*) ;
 void* Min (void*,void*) ;
 int POINT_SIZE (int) ;
 int SET_DIM (TYPE_1__*,int) ;
 int SET_POINT_BIT (TYPE_1__*) ;
 int SET_VARSIZE (TYPE_1__*,int) ;
 void* UR_COORD (TYPE_1__*,int) ;
 scalar_t__ cube_is_point_internal (TYPE_1__*) ;
 TYPE_1__* palloc0 (int) ;

NDBOX *
cube_union_v0(NDBOX *a, NDBOX *b)
{
 int i;
 NDBOX *result;
 int dim;
 int size;


 if (a == b)
  return a;


 if (DIM(a) < DIM(b))
 {
  NDBOX *tmp = b;

  b = a;
  a = tmp;
 }
 dim = DIM(a);

 size = CUBE_SIZE(dim);
 result = palloc0(size);
 SET_VARSIZE(result, size);
 SET_DIM(result, dim);


 for (i = 0; i < DIM(b); i++)
 {
  result->x[i] = Min(
         Min(LL_COORD(a, i), UR_COORD(a, i)),
         Min(LL_COORD(b, i), UR_COORD(b, i))
   );
  result->x[i + DIM(a)] = Max(
         Max(LL_COORD(a, i), UR_COORD(a, i)),
         Max(LL_COORD(b, i), UR_COORD(b, i))
   );
 }

 for (; i < DIM(a); i++)
 {
  result->x[i] = Min(0,
         Min(LL_COORD(a, i), UR_COORD(a, i))
   );
  result->x[i + dim] = Max(0,
         Max(LL_COORD(a, i), UR_COORD(a, i))
   );
 }





 if (cube_is_point_internal(result))
 {
  size = POINT_SIZE(dim);
  SET_VARSIZE(result, size);
  SET_POINT_BIT(result);
 }

 return result;
}
