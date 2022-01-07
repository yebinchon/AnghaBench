
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frame_comp_pos (int ,int*,int*) ;
 int tabline_height () ;
 int topframe ;

int
win_comp_pos()
{
    int row = tabline_height();
    int col = 0;

    frame_comp_pos(topframe, &row, &col);
    return row;
}
