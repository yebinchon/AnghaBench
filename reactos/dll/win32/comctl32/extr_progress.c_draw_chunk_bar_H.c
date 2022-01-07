
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int left; int bottom; int top; } ;
struct TYPE_8__ {int hbrBk; int hdc; scalar_t__ ledGap; int hbrBar; scalar_t__ ledW; TYPE_1__ rect; } ;
struct TYPE_7__ {int left; int right; int bottom; int top; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ ProgressDrawInfo ;


 int FillRect (int ,TYPE_2__*,int ) ;
 void* min (scalar_t__,int) ;

__attribute__((used)) static void draw_chunk_bar_H (const ProgressDrawInfo* di, int start, int end)
{
    RECT r;
    int right = di->rect.left + end;
    r.left = di->rect.left + start;
    r.top = di->rect.top;
    r.bottom = di->rect.bottom;
    while (r.left < right)
    {
        r.right = min (r.left + di->ledW, right);
        FillRect (di->hdc, &r, di->hbrBar);
        r.left = r.right;
        r.right = min (r.left + di->ledGap, right);
        FillRect (di->hdc, &r, di->hbrBk);
        r.left = r.right;
    }
}
