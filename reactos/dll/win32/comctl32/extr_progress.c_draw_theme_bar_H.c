
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ left; int bottom; int top; } ;
struct TYPE_8__ {int hdc; int theme; TYPE_1__ rect; } ;
struct TYPE_7__ {scalar_t__ right; int bottom; int top; scalar_t__ left; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ ProgressDrawInfo ;


 int DrawThemeBackground (int ,int ,int ,int ,TYPE_2__*,int *) ;
 int PP_CHUNK ;

__attribute__((used)) static void draw_theme_bar_H (const ProgressDrawInfo* di, int start, int end)
{
    RECT r;
    r.left = di->rect.left + start;
    r.top = di->rect.top;
    r.bottom = di->rect.bottom;
    r.right = di->rect.left + end;
    DrawThemeBackground (di->theme, di->hdc, PP_CHUNK, 0, &r, ((void*)0));
}
