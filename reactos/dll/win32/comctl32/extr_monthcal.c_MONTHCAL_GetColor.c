
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int* colors; } ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef int COLORREF ;


 size_t MCSC_TRAILINGTEXT ;
 int TRACE (char*,TYPE_1__ const*,size_t) ;

__attribute__((used)) static COLORREF
MONTHCAL_GetColor(const MONTHCAL_INFO *infoPtr, UINT index)
{
  TRACE("%p, %d\n", infoPtr, index);

  if (index > MCSC_TRAILINGTEXT) return -1;
  return infoPtr->colors[index];
}
