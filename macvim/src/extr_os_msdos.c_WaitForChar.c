
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ax; int cx; int dx; int bx; } ;
union REGS {TYPE_1__ x; } ;
struct TYPE_4__ {scalar_t__ w_topline; scalar_t__ w_topfill; } ;


 long BIOSTICK ;
 int FALSE ;
 long FOREVER ;
 scalar_t__ MOUSE_DRAG ;
 scalar_t__ MOUSE_LEFT ;
 scalar_t__ MOUSE_MIDDLE ;
 scalar_t__ MOUSE_RELEASE ;
 scalar_t__ MOUSE_RIGHT ;
 int MSDOS_MOUSE_LEFT ;
 int MSDOS_MOUSE_MIDDLE ;
 int MSDOS_MOUSE_RIGHT ;
 int SET_NUM_MOUSE_CLICKS (scalar_t__,int) ;
 int TRUE ;
 int __dpmi_yield () ;
 scalar_t__ bioskey (int ) ;
 int bioskey_ready ;
 long biostime (int ,long) ;
 scalar_t__ cbrk_pressed ;
 scalar_t__ cons_kbhit () ;
 TYPE_2__* curwin ;
 int int86 (int,union REGS*,union REGS*) ;
 scalar_t__ kbhit () ;
 scalar_t__ mouse_active ;
 scalar_t__ mouse_avail ;
 scalar_t__ mouse_click ;
 int mouse_click_count ;
 long mouse_click_time ;
 int mouse_click_x ;
 int mouse_click_y ;
 int mouse_hidden ;
 scalar_t__ mouse_last_click ;
 scalar_t__ mouse_topfill ;
 scalar_t__ mouse_topline ;
 int mouse_x ;
 int mouse_x_div ;
 int mouse_y ;
 int mouse_y_div ;
 scalar_t__ p_biosk ;
 scalar_t__ p_consk ;
 long p_mouset ;
 int show_mouse (int) ;

__attribute__((used)) static int
WaitForChar(long msec)
{
    long starttime = 0;

    if (msec != 0)
 starttime = biostime(0, 0L);

    for (;;)
    {
 if ((p_consk ? cons_kbhit()
     : p_biosk ? bioskey(bioskey_ready) : kbhit())
  || cbrk_pressed



  )
     return TRUE;







 if (msec == 0 || (msec != FOREVER
       && biostime(0, 0L) > starttime + msec / BIOSTICK))
     break;





    }
    return FALSE;
}
