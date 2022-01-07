
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int bottom; int right; int top; int left; } ;
typedef TYPE_1__ RECT ;
typedef int LONG ;







__attribute__((used)) static inline LONG *element_from_margin_id(RECT *rc, WORD id)
{
    switch(id)
    {
    case 131: return &rc->left;
    case 130: return &rc->top;
    case 129: return &rc->right;
    case 128: return &rc->bottom;
    }
    return ((void*)0);
}
