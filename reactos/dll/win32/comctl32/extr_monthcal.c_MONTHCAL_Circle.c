
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * pens; } ;
struct TYPE_5__ {int bottom; int right; int top; int left; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ MONTHCAL_INFO ;
typedef int HPEN ;
typedef int HDC ;
typedef int HBRUSH ;


 int GetStockObject (int ) ;
 int NULL_BRUSH ;
 size_t PenRed ;
 int Rectangle (int ,int ,int ,int ,int ) ;
 int SelectObject (int ,int ) ;

__attribute__((used)) static void MONTHCAL_Circle(const MONTHCAL_INFO *infoPtr, HDC hdc, const RECT *r)
{
  HPEN old_pen = SelectObject(hdc, infoPtr->pens[PenRed]);
  HBRUSH old_brush;

  old_brush = SelectObject(hdc, GetStockObject(NULL_BRUSH));
  Rectangle(hdc, r->left, r->top, r->right, r->bottom);

  SelectObject(hdc, old_brush);
  SelectObject(hdc, old_pen);
}
