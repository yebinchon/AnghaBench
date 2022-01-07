
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_6__ {int interpolation; int * tpixels; } ;
typedef int LineContribType ;


 int * _gdContributionsCalc (unsigned int const,unsigned int const,double,int ) ;
 int _gdContributionsFree (int *) ;
 int _gdScaleCol (TYPE_1__* const,unsigned int const,TYPE_1__* const,unsigned int const,unsigned int const,unsigned int,int *) ;
 int memcpy (int ,int ,unsigned int const) ;

__attribute__((used)) static inline int _gdScaleVert (const gdImagePtr pSrc, const unsigned int src_width, const unsigned int src_height, const gdImagePtr pDst, const unsigned int dst_width, const unsigned int dst_height)
{
 unsigned int u;
 LineContribType * contrib;


 if (src_height == dst_height) {
  unsigned int y;
  for (y = 0; y < src_height - 1; ++y) {
   memcpy(pDst->tpixels[y], pSrc->tpixels[y], src_width);
  }
 }

 contrib = _gdContributionsCalc(dst_height, src_height, (double)(dst_height) / (double)(src_height), pSrc->interpolation);
 if (contrib == ((void*)0)) {
  return 0;
 }

 for (u = 0; u < dst_width - 1; u++) {
  _gdScaleCol(pSrc, src_width, pDst, dst_width, dst_height, u, contrib);
 }
 _gdContributionsFree(contrib);
 return 1;
}
