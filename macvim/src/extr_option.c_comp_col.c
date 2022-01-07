
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COL_RULER ;
 int Columns ;
 scalar_t__ SHOWCMD_COLS ;
 scalar_t__ firstwin ;
 scalar_t__ lastwin ;
 int p_ls ;
 scalar_t__ p_ru ;
 scalar_t__ p_sc ;
 int ru_col ;
 int ru_wid ;
 int sc_col ;

void
comp_col()
{
    sc_col = Columns;
    ru_col = Columns;

}
