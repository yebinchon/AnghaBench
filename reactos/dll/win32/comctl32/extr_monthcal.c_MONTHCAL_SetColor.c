
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum CachedBrush { ____Placeholder_CachedBrush } CachedBrush ;
typedef size_t UINT ;
struct TYPE_4__ {int* colors; int hwndSelf; int * pens; int * brushes; } ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef int LRESULT ;
typedef int COLORREF ;


 int BrushBackground ;
 int BrushLast ;
 int BrushMonth ;
 int BrushTitle ;
 int CreatePen (int ,int,int) ;
 int CreateSolidBrush (int) ;
 int DeleteObject (int ) ;
 int InvalidateRect (int ,int *,int) ;


 size_t MCSC_TEXT ;

 size_t MCSC_TRAILINGTEXT ;
 int PS_SOLID ;
 size_t PenText ;
 int TRACE (char*,TYPE_1__*,size_t,int) ;

__attribute__((used)) static LRESULT
MONTHCAL_SetColor(MONTHCAL_INFO *infoPtr, UINT index, COLORREF color)
{
  enum CachedBrush type;
  COLORREF prev;

  TRACE("%p, %d: color %08x\n", infoPtr, index, color);

  if (index > MCSC_TRAILINGTEXT) return -1;

  prev = infoPtr->colors[index];
  infoPtr->colors[index] = color;


  switch (index)
  {
  case 130:
    type = BrushBackground;
    break;
  case 128:
    type = BrushTitle;
    break;
  case 129:
    type = BrushMonth;
    break;
  default:
    type = BrushLast;
  }

  if (type != BrushLast)
  {
    DeleteObject(infoPtr->brushes[type]);
    infoPtr->brushes[type] = CreateSolidBrush(color);
  }


  if (index == MCSC_TEXT)
  {
    DeleteObject(infoPtr->pens[PenText]);
    infoPtr->pens[PenText] = CreatePen(PS_SOLID, 1, infoPtr->colors[index]);
  }

  InvalidateRect(infoPtr->hwndSelf, ((void*)0), index == 130);
  return prev;
}
