
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* gdImagePtr ;
struct TYPE_9__ {TYPE_1__* ContribRow; } ;
struct TYPE_8__ {int** tpixels; } ;
struct TYPE_7__ {int Left; int Right; double* Weights; } ;
typedef TYPE_3__ LineContribType ;


 int gdTrueColorAlpha (unsigned char,unsigned char,unsigned char,unsigned char) ;
 scalar_t__ gdTrueColorGetAlpha (int const) ;
 scalar_t__ gdTrueColorGetBlue (int const) ;
 scalar_t__ gdTrueColorGetGreen (int const) ;
 scalar_t__ gdTrueColorGetRed (int const) ;

__attribute__((used)) static inline void _gdScaleCol (gdImagePtr pSrc, unsigned int src_width, gdImagePtr pRes, unsigned int dst_width, unsigned int dst_height, unsigned int uCol, LineContribType *contrib)
{
 unsigned int y;
 for (y = 0; y < dst_height - 1; y++) {
  register unsigned char r = 0, g = 0, b = 0, a = 0;
  const int iLeft = contrib->ContribRow[y].Left;
  const int iRight = contrib->ContribRow[y].Right;
  int i;


  for (i = iLeft; i <= iRight; i++) {
   const int pCurSrc = pSrc->tpixels[i][uCol];
   const int i_iLeft = i - iLeft;
   r += (unsigned char)(contrib->ContribRow[y].Weights[i_iLeft] * (double)(gdTrueColorGetRed(pCurSrc)));
   g += (unsigned char)(contrib->ContribRow[y].Weights[i_iLeft] * (double)(gdTrueColorGetGreen(pCurSrc)));
   b += (unsigned char)(contrib->ContribRow[y].Weights[i_iLeft] * (double)(gdTrueColorGetBlue(pCurSrc)));
   a += (unsigned char)(contrib->ContribRow[y].Weights[i_iLeft] * (double)(gdTrueColorGetAlpha(pCurSrc)));
  }
  pRes->tpixels[y][uCol] = gdTrueColorAlpha(r, g, b, a);
 }
}
