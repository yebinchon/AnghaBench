
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int linenr_T ;
typedef scalar_t__ colnr_T ;
typedef scalar_t__ char_u ;
struct TYPE_10__ {int lnum; } ;
struct TYPE_11__ {TYPE_3__ w_cursor; } ;
struct TYPE_9__ {int lnum; } ;


 char Ctrl_V ;
 int FALSE ;
 scalar_t__ NUL ;
 size_t SHOWCMD_COLS ;
 int TRUE ;
 TYPE_1__ VIsual ;
 scalar_t__ VIsual_active ;
 char VIsual_mode ;
 int char_avail () ;
 TYPE_4__* curwin ;
 int display_showcmd () ;
 scalar_t__* empty_option ;
 int getvcols (TYPE_4__*,TYPE_3__*,TYPE_1__*,scalar_t__*,scalar_t__*) ;
 int hasFolding (int,int*,int*) ;
 int lt (TYPE_1__,TYPE_3__) ;
 int mb_ptr2len (scalar_t__*) ;
 scalar_t__* ml_get_cursor () ;
 scalar_t__* ml_get_pos (TYPE_1__*) ;
 scalar_t__* p_sbr ;
 int p_sc ;
 char* p_sel ;
 scalar_t__* showcmd_buf ;
 scalar_t__ showcmd_is_clear ;
 int showcmd_visual ;
 int sprintf (char*,char*,int,...) ;
 int stub1 (scalar_t__*) ;

void
clear_showcmd()
{
    if (!p_sc)
 return;

    if (VIsual_active && !char_avail())
    {
 int cursor_bot = lt(VIsual, curwin->w_cursor);
 long lines;
 colnr_T leftcol, rightcol;
 linenr_T top, bot;


 if (cursor_bot)
 {
     top = VIsual.lnum;
     bot = curwin->w_cursor.lnum;
 }
 else
 {
     top = curwin->w_cursor.lnum;
     bot = VIsual.lnum;
 }





 lines = bot - top + 1;

 if (VIsual_mode == Ctrl_V)
 {






     getvcols(curwin, &curwin->w_cursor, &VIsual, &leftcol, &rightcol);



     sprintf((char *)showcmd_buf, "%ldx%ld", lines,
           (long)(rightcol - leftcol + 1));
 }
 else if (VIsual_mode == 'V' || VIsual.lnum != curwin->w_cursor.lnum)
     sprintf((char *)showcmd_buf, "%ld", lines);
 else
 {
     char_u *s, *e;
     int l;
     int bytes = 0;
     int chars = 0;

     if (cursor_bot)
     {
  s = ml_get_pos(&VIsual);
  e = ml_get_cursor();
     }
     else
     {
  s = ml_get_cursor();
  e = ml_get_pos(&VIsual);
     }
     while ((*p_sel != 'e') ? s <= e : s < e)
     {



  l = (*s == NUL) ? 0 : 1;

  if (l == 0)
  {
      ++bytes;
      ++chars;
      break;
  }
  bytes += l;
  ++chars;
  s += l;
     }
     if (bytes == chars)
  sprintf((char *)showcmd_buf, "%d", chars);
     else
  sprintf((char *)showcmd_buf, "%d-%d", chars, bytes);
 }
 showcmd_buf[SHOWCMD_COLS] = NUL;
 showcmd_visual = TRUE;
    }
    else
    {
 showcmd_buf[0] = NUL;
 showcmd_visual = FALSE;


 if (showcmd_is_clear)
     return;
    }

    display_showcmd();
}
