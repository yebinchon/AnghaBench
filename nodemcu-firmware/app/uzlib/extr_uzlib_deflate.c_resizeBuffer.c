
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
typedef int uchar ;
struct TYPE_2__ {double inLen; double inNdx; int * buffer; scalar_t__ size; scalar_t__ len; } ;


 int DBG_COUNT (int) ;
 int UZLIB_MEMORY_ERROR ;
 int UZLIB_THROW (int ) ;
 TYPE_1__* oBuf ;
 int * realloc (int *,scalar_t__) ;

void resizeBuffer(void) {
  uchar *nb;
  DBG_COUNT(2);


  double newEstimate = (((double) oBuf->len)*oBuf->inLen) / oBuf->inNdx;
  oBuf->size = 128 + (uint) newEstimate;
  if (!(nb = realloc(oBuf->buffer, oBuf->size)))
    UZLIB_THROW(UZLIB_MEMORY_ERROR);
  oBuf->buffer = nb;
}
