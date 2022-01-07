
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {float right; float left; float bottom; float top; } ;
typedef TYPE_1__ RECT ;
typedef float LONG ;
typedef int BOOL ;


 int FALSE ;
 int IntersectRect (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ;
 scalar_t__ IsRectEmpty (TYPE_1__*) ;
 int SetRectEmpty (TYPE_1__*) ;
 int TRUE ;

BOOL wined3d_clip_blit(const RECT *clip_rect, RECT *clipped, RECT *other)
{
    RECT orig = *clipped;
    float scale_x = (float)(orig.right - orig.left) / (float)(other->right - other->left);
    float scale_y = (float)(orig.bottom - orig.top) / (float)(other->bottom - other->top);

    IntersectRect(clipped, clipped, clip_rect);

    if (IsRectEmpty(clipped))
    {
        SetRectEmpty(other);
        return FALSE;
    }

    other->left += (LONG)((clipped->left - orig.left) / scale_x);
    other->top += (LONG)((clipped->top - orig.top) / scale_y);
    other->right -= (LONG)((orig.right - clipped->right) / scale_x);
    other->bottom -= (LONG)((orig.bottom - clipped->bottom) / scale_y);

    return TRUE;
}
