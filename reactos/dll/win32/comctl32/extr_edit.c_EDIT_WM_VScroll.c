
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int style; int y_offset; int line_count; int hwndSelf; int flags; } ;
typedef int LRESULT ;
typedef int INT ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_EM_LineScroll (TYPE_1__*,int ,int) ;
 int EDIT_EM_Scroll (TYPE_1__*,int) ;
 int EDIT_NOTIFY_PARENT (TYPE_1__*,int ) ;
 int EDIT_UpdateScrollInfo (TYPE_1__*) ;
 int EF_VSCROLL_TRACK ;


 int EN_VSCROLL ;
 int ERR (char*,int,int) ;
 int ES_AUTOVSCROLL ;
 int ES_MULTILINE ;
 int GWL_STYLE ;
 int GetScrollPos (int ,int ) ;
 int GetWindowLongW (int ,int ) ;
 int SB_VERT ;
 int TRACE (char*,...) ;
 int WS_VSCROLL ;
 int get_vertical_line_count (TYPE_1__*) ;

__attribute__((used)) static LRESULT EDIT_WM_VScroll(EDITSTATE *es, INT action, INT pos)
{
 INT dy;

 if (!(es->style & ES_MULTILINE))
  return 0;

 if (!(es->style & ES_AUTOVSCROLL))
  return 0;

 dy = 0;
 switch (action) {
 case 133:
 case 134:
 case 131:
 case 132:
  TRACE("action %d (%s)\n", action, (action == 133 ? "SB_LINEUP" :
         (action == 134 ? "SB_LINEDOWN" :
          (action == 131 ? "SB_PAGEUP" :
           "SB_PAGEDOWN"))));
  EDIT_EM_Scroll(es, action);
  return 0;
 case 128:
  TRACE("SB_TOP\n");
  dy = -es->y_offset;
  break;
 case 136:
  TRACE("SB_BOTTOM\n");
  dy = es->line_count - 1 - es->y_offset;
  break;
 case 129:
  TRACE("SB_THUMBTRACK %d\n", pos);
  es->flags |= EF_VSCROLL_TRACK;
  if(es->style & WS_VSCROLL)
      dy = pos - es->y_offset;
  else
  {

      INT vlc, new_y;

      if(pos < 0 || pos > 100) return 0;
      vlc = get_vertical_line_count(es);
      new_y = pos * (es->line_count - vlc) / 100;
      dy = es->line_count ? (new_y - es->y_offset) : 0;
      TRACE("line_count=%d, y_offset=%d, pos=%d, dy = %d\n",
       es->line_count, es->y_offset, pos, dy);
  }
  break;
 case 130:
  TRACE("SB_THUMBPOSITION %d\n", pos);
  es->flags &= ~EF_VSCROLL_TRACK;
  if(es->style & WS_VSCROLL)
      dy = pos - es->y_offset;
  else
  {

      INT vlc, new_y;

      if(pos < 0 || pos > 100) return 0;
      vlc = get_vertical_line_count(es);
      new_y = pos * (es->line_count - vlc) / 100;
      dy = es->line_count ? (new_y - es->y_offset) : 0;
      TRACE("line_count=%d, y_offset=%d, pos=%d, dy = %d\n",
       es->line_count, es->y_offset, pos, dy);
  }
  if (!dy)
  {

   EDIT_UpdateScrollInfo(es);
   EDIT_NOTIFY_PARENT(es, EN_VSCROLL);
  }
  break;
 case 135:
  TRACE("SB_ENDSCROLL\n");
  break;






 case 138:
 {
  LRESULT ret;
  if(GetWindowLongW( es->hwndSelf, GWL_STYLE ) & WS_VSCROLL)
      ret = GetScrollPos(es->hwndSelf, SB_VERT);
  else
  {

      INT vlc = get_vertical_line_count(es);
      ret = es->line_count ? es->y_offset * 100 / (es->line_count - vlc) : 0;
  }
  TRACE("EM_GETTHUMB: returning %ld\n", ret);
  return ret;
 }
 case 137:
  TRACE("EM_LINESCROLL %d\n", pos);
  dy = pos;
  break;

 default:
  ERR("undocumented WM_VSCROLL action %d (0x%04x), please report\n",
                    action, action);
  return 0;
 }
 if (dy)
  EDIT_EM_LineScroll(es, 0, dy);
 return 0;
}
