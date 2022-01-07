
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int win_T ;
typedef int tabpage_T ;
typedef int buf_T ;


 scalar_t__ FAIL ;
 int TRUE ;
 scalar_t__ find_win_for_buf (int *,int **,int **) ;
 int switch_buffer (int **,int *) ;
 scalar_t__ switch_win (int **,int **,int *,int *,int ) ;

__attribute__((used)) static void
switch_to_win_for_buf(
    buf_T *buf,
    win_T **save_curwinp,
    tabpage_T **save_curtabp,
    buf_T **save_curbufp)
{
    win_T *wp;
    tabpage_T *tp;

    if (find_win_for_buf(buf, &wp, &tp) == FAIL
     || switch_win(save_curwinp, save_curtabp, wp, tp, TRUE) == FAIL)
 switch_buffer(save_curbufp, buf);
}
