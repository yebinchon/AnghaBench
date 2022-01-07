
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_4__ {void* b_p_iminsert; } ;
struct TYPE_3__ {scalar_t__ in_use; } ;


 void* B_IMODE_IM ;
 void* B_IMODE_LMAP ;
 void* B_IMODE_NONE ;
 int FALSE ;
 int LANGMAP ;
 int State ;
 int TRUE ;
 TYPE_2__* curbuf ;
 TYPE_1__ gui ;
 int gui_update_cursor (int ,int ) ;
 scalar_t__ im_get_status () ;
 int im_set_active (int ) ;
 scalar_t__ map_to_exists_mode (int *,int,int ) ;
 int set_iminsert_global () ;
 int showmode () ;
 int status_redraw_curbuf () ;

__attribute__((used)) static void
ins_ctrl_hat()
{
    if (map_to_exists_mode((char_u *)"", LANGMAP, FALSE))
    {

 if (State & LANGMAP)
 {
     curbuf->b_p_iminsert = B_IMODE_NONE;
     State &= ~LANGMAP;
 }
 else
 {
     curbuf->b_p_iminsert = B_IMODE_LMAP;
     State |= LANGMAP;



 }
    }
    set_iminsert_global();
    showmode();
}
