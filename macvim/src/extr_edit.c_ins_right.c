
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
struct TYPE_6__ {scalar_t__ lnum; scalar_t__ col; } ;
struct TYPE_7__ {TYPE_2__ w_cursor; void* w_set_curswant; } ;


 int FDO_HOR ;
 scalar_t__ KeyTyped ;
 scalar_t__ NUL ;
 void* TRUE ;
 TYPE_4__* curbuf ;
 TYPE_3__* curwin ;
 int fdo_flags ;
 int foldOpenCursor () ;
 scalar_t__ gchar_cursor () ;
 scalar_t__ has_mbyte ;
 scalar_t__ mb_ptr2len (int ) ;
 int ml_get_cursor () ;
 int oneright () ;
 int p_ww ;
 scalar_t__ revins_chars ;
 int revins_legal ;
 int start_arrow (TYPE_2__*) ;
 scalar_t__ stub1 (int ) ;
 int undisplay_dollar () ;
 int vim_beep () ;
 int * vim_strchr (int ,char) ;
 scalar_t__ virtual_active () ;

__attribute__((used)) static void
ins_right()
{




    undisplay_dollar();
    if (gchar_cursor() != NUL



     )
    {
 start_arrow(&curwin->w_cursor);
 curwin->w_set_curswant = TRUE;





 {





  ++curwin->w_cursor.col;
 }






    }


    else if (vim_strchr(p_ww, ']') != ((void*)0)
     && curwin->w_cursor.lnum < curbuf->b_ml.ml_line_count)
    {
 start_arrow(&curwin->w_cursor);
 curwin->w_set_curswant = TRUE;
 ++curwin->w_cursor.lnum;
 curwin->w_cursor.col = 0;
    }
    else
 vim_beep();
}
