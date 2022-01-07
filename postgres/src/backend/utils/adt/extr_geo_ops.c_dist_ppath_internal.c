
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_3__ {int npts; int * p; int closed; } ;
typedef int Point ;
typedef TYPE_1__ PATH ;
typedef int LSEG ;


 int Assert (int) ;
 scalar_t__ float8_lt (double,double) ;
 double lseg_closept_point (int *,int *,int *) ;
 int statlseg_construct (int *,int *,int *) ;

__attribute__((used)) static float8
dist_ppath_internal(Point *pt, PATH *path)
{
 float8 result = 0.0;
 bool have_min = 0;
 float8 tmp;
 int i;
 LSEG lseg;

 Assert(path->npts > 0);





 for (i = 0; i < path->npts; i++)
 {
  int iprev;

  if (i > 0)
   iprev = i - 1;
  else
  {
   if (!path->closed)
    continue;
   iprev = path->npts - 1;
  }

  statlseg_construct(&lseg, &path->p[iprev], &path->p[i]);
  tmp = lseg_closept_point(((void*)0), &lseg, pt);
  if (!have_min || float8_lt(tmp, result))
  {
   result = tmp;
   have_min = 1;
  }
 }

 return result;
}
