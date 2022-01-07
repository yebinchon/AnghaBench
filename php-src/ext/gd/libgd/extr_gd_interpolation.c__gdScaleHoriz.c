
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_6__ {int interpolation; int * tpixels; } ;
typedef int LineContribType ;


 int * _gdContributionsCalc (unsigned int,unsigned int,double,int ) ;
 int _gdContributionsFree (int *) ;
 int _gdScaleRow (TYPE_1__*,unsigned int,TYPE_1__*,unsigned int,unsigned int,int *) ;
 int memcpy (int ,int ,unsigned int) ;

__attribute__((used)) static inline int _gdScaleHoriz(gdImagePtr pSrc, unsigned int src_width, unsigned int src_height, gdImagePtr pDst, unsigned int dst_width, unsigned int dst_height)
{
 unsigned int u;
 LineContribType * contrib;


 if (dst_width == src_width) {
  unsigned int y;
  for (y = 0; y < src_height - 1; ++y) {
   memcpy(pDst->tpixels[y], pSrc->tpixels[y], src_width);
  }
 }

 contrib = _gdContributionsCalc(dst_width, src_width, (double)dst_width / (double)src_width, pSrc->interpolation);
 if (contrib == ((void*)0)) {
  return 0;
 }

 for (u = 0; u < dst_height - 1; u++) {
  _gdScaleRow(pSrc, src_width, pDst, dst_width, u, contrib);
 }
 _gdContributionsFree (contrib);
 return 1;
}
