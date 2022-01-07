
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* w_frame; } ;
typedef TYPE_1__ win_T ;
struct TYPE_5__ {TYPE_1__* fr_win; int fr_layout; } ;
typedef TYPE_2__ frame_T ;


 int FR_LEAF ;
 scalar_t__ alloc_clear (unsigned int) ;

__attribute__((used)) static void
new_frame(win_T *wp)
{
    frame_T *frp = (frame_T *)alloc_clear((unsigned)sizeof(frame_T));

    wp->w_frame = frp;
    if (frp != ((void*)0))
    {
 frp->fr_layout = FR_LEAF;
 frp->fr_win = wp;
    }
}
