
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_17__ {int dwStyle; TYPE_2__ todayrect; TYPE_3__* calendars; } ;
struct TYPE_16__ {int top; int left; scalar_t__ bottom; } ;
struct TYPE_13__ {scalar_t__ bottom; } ;
struct TYPE_15__ {TYPE_1__ days; TYPE_4__ title; } ;
typedef TYPE_4__ RECT ;
typedef TYPE_5__ MONTHCAL_INFO ;
typedef int LRESULT ;


 int AdjustWindowRect (TYPE_4__*,int ,int ) ;
 int FALSE ;
 int OffsetRect (TYPE_4__*,int ,int ) ;
 int TRACE (char*,TYPE_4__*) ;
 int TRUE ;
 TYPE_4__* wine_dbgstr_rect (TYPE_4__*) ;

__attribute__((used)) static LRESULT
MONTHCAL_GetMinReqRect(const MONTHCAL_INFO *infoPtr, RECT *rect)
{
  TRACE("rect %p\n", rect);

  if(!rect) return FALSE;

  *rect = infoPtr->calendars[0].title;
  rect->bottom = infoPtr->calendars[0].days.bottom + infoPtr->todayrect.bottom -
                 infoPtr->todayrect.top;

  AdjustWindowRect(rect, infoPtr->dwStyle, FALSE);


  OffsetRect(rect, -rect->left, -rect->top);

  TRACE("%s\n", wine_dbgstr_rect(rect));

  return TRUE;
}
