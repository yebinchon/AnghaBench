
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bottom; int right; int left; } ;
struct TYPE_8__ {int hdc; int theme; TYPE_1__ rect; } ;
struct TYPE_7__ {scalar_t__ top; scalar_t__ bottom; int right; int left; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ ProgressDrawInfo ;


 int DrawThemeBackground (int ,int ,int ,int ,TYPE_2__*,int *) ;
 int PP_CHUNKVERT ;

__attribute__((used)) static void draw_theme_bar_V (const ProgressDrawInfo* di, int start, int end)
{
    RECT r;
    r.left = di->rect.left;
    r.right = di->rect.right;
    r.bottom = di->rect.bottom - start;
    r.top = di->rect.bottom - end;
    DrawThemeBackground (di->theme, di->hdc, PP_CHUNKVERT, 0, &r, ((void*)0));
}
