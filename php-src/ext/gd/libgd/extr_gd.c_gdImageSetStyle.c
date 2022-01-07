
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_3__ {int* style; int styleLength; scalar_t__ stylePos; } ;


 int gdFree (int*) ;
 scalar_t__ gdMalloc (int) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ overflow2 (int,int) ;

void gdImageSetStyle (gdImagePtr im, int *style, int noOfPixels)
{
 if (im->style) {
  gdFree(im->style);
 }
 if (overflow2(sizeof (int), noOfPixels)) {
  return;
 }
 im->style = (int *) gdMalloc(sizeof(int) * noOfPixels);
 memcpy(im->style, style, sizeof(int) * noOfPixels);
 im->styleLength = noOfPixels;
 im->stylePos = 0;
}
