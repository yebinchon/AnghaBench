
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef double (* interpolation_method ) (double) ;
struct TYPE_7__ {TYPE_1__* ContribRow; } ;
struct TYPE_6__ {int Left; int Right; double* Weights; } ;
typedef TYPE_2__ LineContribType ;


 double DEFAULT_BOX_RADIUS ;
 int MAX (int ,int) ;
 int MIN (int,int) ;
 TYPE_2__* _gdContributionsAlloc (unsigned int,int) ;
 int _gdContributionsFree (TYPE_2__*) ;
 scalar_t__ ceil (double const) ;
 scalar_t__ floor (double const) ;
 double stub1 (double) ;

__attribute__((used)) static inline LineContribType *_gdContributionsCalc(unsigned int line_size, unsigned int src_size, double scale_d, const interpolation_method pFilter)
{
 double width_d;
 double scale_f_d = 1.0;
 const double filter_width_d = DEFAULT_BOX_RADIUS;
 int windows_size;
 unsigned int u;
 LineContribType *res;

 if (scale_d < 1.0) {
  width_d = filter_width_d / scale_d;
  scale_f_d = scale_d;
 } else {
  width_d= filter_width_d;
 }

 windows_size = 2 * (int)ceil(width_d) + 1;
 res = _gdContributionsAlloc(line_size, windows_size);
 if (res == ((void*)0)) {
  return ((void*)0);
 }
 for (u = 0; u < line_size; u++) {
 const double dCenter = (double)u / scale_d;

 register int iLeft = MAX(0, (int)floor (dCenter - width_d));
 int iRight = MIN((int)ceil(dCenter + width_d), (int)src_size - 1);
 double dTotalWeight = 0.0;
  int iSrc;


 if (iRight - iLeft + 1 > windows_size) {
  if (iLeft < ((int)src_size - 1 / 2)) {
   iLeft++;
  } else {
   iRight--;
  }
 }

 res->ContribRow[u].Left = iLeft;
 res->ContribRow[u].Right = iRight;

 for (iSrc = iLeft; iSrc <= iRight; iSrc++) {
  dTotalWeight += (res->ContribRow[u].Weights[iSrc-iLeft] = scale_f_d * (*pFilter)(scale_f_d * (dCenter - (double)iSrc)));
 }

  if (dTotalWeight < 0.0) {
   _gdContributionsFree(res);
   return ((void*)0);
  }

 if (dTotalWeight > 0.0) {
  for (iSrc = iLeft; iSrc <= iRight; iSrc++) {
   res->ContribRow[u].Weights[iSrc-iLeft] /= dTotalWeight;
  }
 }
 }
 return res;
}
