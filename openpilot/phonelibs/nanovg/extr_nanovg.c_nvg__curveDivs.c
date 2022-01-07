
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float acosf (float) ;
 scalar_t__ ceilf (float) ;
 int nvg__maxi (int,int) ;

__attribute__((used)) static int nvg__curveDivs(float r, float arc, float tol)
{
 float da = acosf(r / (r + tol)) * 2.0f;
 return nvg__maxi(2, (int)ceilf(arc / da));
}
