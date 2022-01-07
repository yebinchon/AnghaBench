
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NDBOX ;


 int DIM (int *) ;
 scalar_t__ IS_POINT (int *) ;
 scalar_t__ LL_COORD (int *,int) ;
 scalar_t__ UR_COORD (int *,int) ;

__attribute__((used)) static bool
cube_is_point_internal(NDBOX *cube)
{
 int i;

 if (IS_POINT(cube))
  return 1;
 for (i = 0; i < DIM(cube); i++)
 {
  if (LL_COORD(cube, i) != UR_COORD(cube, i))
   return 0;
 }
 return 1;
}
