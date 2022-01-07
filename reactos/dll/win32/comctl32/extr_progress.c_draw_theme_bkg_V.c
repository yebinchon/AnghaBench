
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int top; int left; } ;
struct TYPE_9__ {scalar_t__ bottom; int right; int left; } ;
struct TYPE_11__ {int hdc; int theme; TYPE_2__ bgRect; TYPE_1__ rect; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ ProgressDrawInfo ;


 int DrawThemeBackground (int ,int ,int ,int ,TYPE_2__*,TYPE_2__*) ;
 int OffsetRect (TYPE_2__*,int ,int ) ;
 int PP_BARVERT ;
 int SetRect (TYPE_2__*,int ,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void draw_theme_bkg_V (const ProgressDrawInfo* di, int start, int end)
{
    RECT bgrect, r;

    SetRect(&r, di->rect.left, di->rect.bottom - end, di->rect.right, di->rect.bottom - start);
    bgrect = di->bgRect;
    OffsetRect(&bgrect, -bgrect.left, -bgrect.top);

    DrawThemeBackground (di->theme, di->hdc, PP_BARVERT, 0, &bgrect, &r);
}
