
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Point ;


 scalar_t__ point_eq_point (int *,int *) ;

__attribute__((used)) static bool
plist_same(int npts, Point *p1, Point *p2)
{
 int i,
    ii,
    j;


 for (i = 0; i < npts; i++)
 {
  if (point_eq_point(&p2[i], &p1[0]))
  {


   for (ii = 1, j = i + 1; ii < npts; ii++, j++)
   {
    if (j >= npts)
     j = 0;
    if (!point_eq_point(&p2[j], &p1[ii]))
     break;
   }
   if (ii == npts)
    return 1;


   for (ii = 1, j = i - 1; ii < npts; ii++, j--)
   {
    if (j < 0)
     j = (npts - 1);
    if (!point_eq_point(&p2[j], &p1[ii]))
     break;
   }
   if (ii == npts)
    return 1;
  }
 }

 return 0;
}
