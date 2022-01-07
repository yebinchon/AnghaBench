
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NDBOX ;


 int VARSIZE (int *) ;
 int * cube_union_v0 (int *,int *) ;

NDBOX *
g_cube_binary_union(NDBOX *r1, NDBOX *r2, int *sizep)
{
 NDBOX *retval;

 retval = cube_union_v0(r1, r2);
 *sizep = VARSIZE(retval);

 return retval;
}
