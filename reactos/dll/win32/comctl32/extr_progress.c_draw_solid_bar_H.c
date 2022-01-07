
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bottom; scalar_t__ left; int top; } ;
struct TYPE_5__ {int hbrBar; int hdc; TYPE_1__ rect; } ;
typedef int RECT ;
typedef TYPE_2__ ProgressDrawInfo ;


 int FillRect (int ,int *,int ) ;
 int SetRect (int *,scalar_t__,int ,scalar_t__,int ) ;

__attribute__((used)) static void draw_solid_bar_H (const ProgressDrawInfo* di, int start, int end)
{
    RECT r;
    SetRect(&r, di->rect.left + start, di->rect.top, di->rect.left + end, di->rect.bottom);
    FillRect (di->hdc, &r, di->hbrBar);
}
