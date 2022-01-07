
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cx; int cy; } ;
struct TYPE_5__ {TYPE_1__ dim; } ;
typedef TYPE_2__ MONTHCAL_INFO ;
typedef int INT ;



__attribute__((used)) static inline INT MONTHCAL_GetCalCount(const MONTHCAL_INFO *infoPtr)
{
   return infoPtr->dim.cx * infoPtr->dim.cy;
}
