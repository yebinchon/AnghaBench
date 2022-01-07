
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* bottom; void* right; void* top; void* left; } ;
typedef TYPE_1__ RECT ;
typedef void* INT ;
typedef scalar_t__ BOOL ;



__attribute__((used)) static inline void rotate_rect(RECT *rc, BOOL sense)
{
    INT tmp;
    if(sense)
    {
        tmp = rc->bottom;
        rc->bottom = rc->right;
        rc->right = rc->top;
        rc->top = rc->left;
        rc->left = tmp;
    }
    else
    {
        tmp = rc->left;
        rc->left = rc->top;
        rc->top = rc->right;
        rc->right = rc->bottom;
        rc->bottom = tmp;
    }
}
