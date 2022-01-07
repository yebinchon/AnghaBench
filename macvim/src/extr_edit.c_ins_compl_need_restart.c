
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CTRL_X_FUNCTION ;
 scalar_t__ CTRL_X_OMNI ;
 scalar_t__ compl_opt_refresh_always ;
 scalar_t__ compl_was_interrupted ;
 scalar_t__ ctrl_x_mode ;

__attribute__((used)) static int
ins_compl_need_restart()
{


    return compl_was_interrupted
 || ((ctrl_x_mode == CTRL_X_FUNCTION || ctrl_x_mode == CTRL_X_OMNI)
        && compl_opt_refresh_always);
}
