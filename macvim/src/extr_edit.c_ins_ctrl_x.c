
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int CONT_INTRPT ;
 int CONT_N_ADDS ;
 scalar_t__ CTRL_X_CMDLINE ;
 int CTRL_X_MSG (scalar_t__) ;
 scalar_t__ CTRL_X_NOT_DEFINED_YET ;
 scalar_t__ _ (int ) ;
 int compl_cont_status ;
 scalar_t__ ctrl_x_mode ;
 int * edit_submode ;
 int * edit_submode_pre ;
 int showmode () ;

__attribute__((used)) static void
ins_ctrl_x()
{


    if (ctrl_x_mode != CTRL_X_CMDLINE)
    {


 if (compl_cont_status & CONT_N_ADDS)
     compl_cont_status |= CONT_INTRPT;
 else
     compl_cont_status = 0;

 ctrl_x_mode = CTRL_X_NOT_DEFINED_YET;
 edit_submode = (char_u *)_(CTRL_X_MSG(ctrl_x_mode));
 edit_submode_pre = ((void*)0);
 showmode();
    }
}
