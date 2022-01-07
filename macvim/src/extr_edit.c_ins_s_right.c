
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;
struct TYPE_6__ {scalar_t__ lnum; } ;
struct TYPE_7__ {int w_set_curswant; TYPE_2__ w_cursor; } ;


 int FALSE ;
 int FDO_HOR ;
 scalar_t__ KeyTyped ;
 scalar_t__ NUL ;
 int TRUE ;
 TYPE_4__* curbuf ;
 TYPE_3__* curwin ;
 int fdo_flags ;
 int foldOpenCursor () ;
 int fwd_word (long,int ,int ) ;
 scalar_t__ gchar_cursor () ;
 int start_arrow (TYPE_2__*) ;
 int undisplay_dollar () ;
 int vim_beep () ;

__attribute__((used)) static void
ins_s_right()
{




    undisplay_dollar();
    if (curwin->w_cursor.lnum < curbuf->b_ml.ml_line_count
     || gchar_cursor() != NUL)
    {
 start_arrow(&curwin->w_cursor);
 (void)fwd_word(1L, FALSE, 0);
 curwin->w_set_curswant = TRUE;
    }
    else
 vim_beep();
}
