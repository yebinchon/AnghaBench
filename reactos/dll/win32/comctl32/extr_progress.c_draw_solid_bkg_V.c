
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bottom; int right; int left; } ;
struct TYPE_5__ {int hbrBk; int hdc; TYPE_1__ rect; } ;
typedef int RECT ;
typedef TYPE_2__ ProgressDrawInfo ;


 int FillRect (int ,int *,int ) ;
 int SetRect (int *,int ,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void draw_solid_bkg_V (const ProgressDrawInfo* di, int start, int end)
{
    RECT r;
    SetRect(&r, di->rect.left, di->rect.bottom - end, di->rect.right, di->rect.bottom - start);
    FillRect (di->hdc, &r, di->hbrBk);
}
