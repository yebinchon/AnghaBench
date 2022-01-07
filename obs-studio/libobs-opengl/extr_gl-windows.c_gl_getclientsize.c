
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct gs_swap_chain {TYPE_1__* wi; } ;
struct TYPE_5__ {int bottom; int right; } ;
struct TYPE_4__ {int hwnd; } ;
typedef TYPE_2__ RECT ;


 int GetClientRect (int ,TYPE_2__*) ;

extern void gl_getclientsize(const struct gs_swap_chain *swap, uint32_t *width,
        uint32_t *height)
{
 RECT rc;
 if (swap) {
  GetClientRect(swap->wi->hwnd, &rc);
  *width = rc.right;
  *height = rc.bottom;
 } else {
  *width = 0;
  *height = 0;
 }
}
