
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dwStyle; } ;
struct TYPE_6__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ REBAR_INFO ;


 int CCS_VERT ;

__attribute__((used)) static void translate_rect(const REBAR_INFO *infoPtr, RECT *dest, const RECT *src)
{
    if (infoPtr->dwStyle & CCS_VERT) {
        int tmp;
        tmp = src->left;
        dest->left = src->top;
        dest->top = tmp;

        tmp = src->right;
        dest->right = src->bottom;
        dest->bottom = tmp;
    } else {
        *dest = *src;
    }
}
