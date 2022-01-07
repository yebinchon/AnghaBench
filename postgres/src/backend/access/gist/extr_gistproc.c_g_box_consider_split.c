
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ float8 ;
typedef scalar_t__ float4 ;
struct TYPE_7__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_6__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_8__ {TYPE_2__ low; TYPE_1__ high; } ;
struct TYPE_9__ {int entriesCount; int first; int dim; scalar_t__ overlap; scalar_t__ ratio; scalar_t__ range; scalar_t__ leftUpper; scalar_t__ rightLower; TYPE_3__ boundingBox; } ;
typedef TYPE_4__ ConsiderSplitContext ;


 scalar_t__ LIMIT_RATIO ;
 int Min (int,int) ;
 scalar_t__ float4_div (int ,int) ;
 scalar_t__ float8_div (scalar_t__,scalar_t__) ;
 scalar_t__ float8_mi (scalar_t__,scalar_t__) ;
 scalar_t__ non_negative (scalar_t__) ;

__attribute__((used)) static inline void
g_box_consider_split(ConsiderSplitContext *context, int dimNum,
      float8 rightLower, int minLeftCount,
      float8 leftUpper, int maxLeftCount)
{
 int leftCount,
    rightCount;
 float4 ratio,
    overlap;
 float8 range;





 if (minLeftCount >= (context->entriesCount + 1) / 2)
 {
  leftCount = minLeftCount;
 }
 else
 {
  if (maxLeftCount <= context->entriesCount / 2)
   leftCount = maxLeftCount;
  else
   leftCount = context->entriesCount / 2;
 }
 rightCount = context->entriesCount - leftCount;





 ratio = float4_div(Min(leftCount, rightCount), context->entriesCount);

 if (ratio > LIMIT_RATIO)
 {
  bool selectthis = 0;
  if (dimNum == 0)
   range = float8_mi(context->boundingBox.high.x,
         context->boundingBox.low.x);
  else
   range = float8_mi(context->boundingBox.high.y,
         context->boundingBox.low.y);

  overlap = float8_div(float8_mi(leftUpper, rightLower), range);


  if (context->first)
   selectthis = 1;
  else if (context->dim == dimNum)
  {




   if (overlap < context->overlap ||
    (overlap == context->overlap && ratio > context->ratio))
    selectthis = 1;
  }
  else
  {
   if (non_negative(overlap) < non_negative(context->overlap) ||
    (range > context->range &&
     non_negative(overlap) <= non_negative(context->overlap)))
    selectthis = 1;
  }

  if (selectthis)
  {

   context->first = 0;
   context->ratio = ratio;
   context->range = range;
   context->overlap = overlap;
   context->rightLower = rightLower;
   context->leftUpper = leftUpper;
   context->dim = dimNum;
  }
 }
}
