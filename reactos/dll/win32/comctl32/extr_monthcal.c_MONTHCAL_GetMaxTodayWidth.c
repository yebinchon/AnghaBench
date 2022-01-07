
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ left; scalar_t__ right; } ;
struct TYPE_5__ {TYPE_1__ todayrect; } ;
typedef TYPE_2__ MONTHCAL_INFO ;
typedef scalar_t__ LRESULT ;



__attribute__((used)) static LRESULT
MONTHCAL_GetMaxTodayWidth(const MONTHCAL_INFO *infoPtr)
{
  return(infoPtr->todayrect.right - infoPtr->todayrect.left);
}
