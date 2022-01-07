
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_11__ {int left; int right; } ;
struct TYPE_14__ {int left_margin; int right_margin; TYPE_1__ format_rect; int hwndSelf; scalar_t__ font; } ;
struct TYPE_13__ {int right; int left; } ;
struct TYPE_12__ {int tmPitchAndFamily; int tmCharSet; } ;
typedef TYPE_2__ TEXTMETRICW ;
typedef TYPE_3__ RECT ;
typedef int LONG ;
typedef int INT ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef TYPE_4__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 int EC_LEFTMARGIN ;
 int EC_RIGHTMARGIN ;
 scalar_t__ EC_USEFONTINFO ;
 int EDIT_AdjustFormatRect (TYPE_4__*) ;
 int EDIT_UpdateText (TYPE_4__*,int *,int ) ;
 int GdiGetCharDimensions (int ,TYPE_2__*,int *) ;
 int GetClientRect (int ,TYPE_3__*) ;
 int GetDC (int ) ;
 int IsRectEmpty (TYPE_3__*) ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int TMPF_TRUETYPE ;
 int TMPF_VECTOR ;
 int TRACE (char*,int,int) ;
 int TRUE ;
 int is_cjk (int ) ;

__attribute__((used)) static void EDIT_EM_SetMargins(EDITSTATE *es, INT action,
          WORD left, WORD right, BOOL repaint)
{
 TEXTMETRICW tm;
 INT default_left_margin = 0;
 INT default_right_margin = 0;


        if (es->font && (left == EC_USEFONTINFO || right == EC_USEFONTINFO)) {
            HDC dc = GetDC(es->hwndSelf);
            HFONT old_font = SelectObject(dc, es->font);
            LONG width = GdiGetCharDimensions(dc, &tm, ((void*)0));
            RECT rc;


            if (tm.tmPitchAndFamily & ( TMPF_VECTOR | TMPF_TRUETYPE )) {
                if (!is_cjk(tm.tmCharSet)) {
                    default_left_margin = width / 2;
                    default_right_margin = width / 2;

                    GetClientRect(es->hwndSelf, &rc);
                    if (rc.right - rc.left < (width / 2 + width) * 2 &&
                        (width >= 28 || !IsRectEmpty(&rc)) ) {
                        default_left_margin = es->left_margin;
                        default_right_margin = es->right_margin;
                    }
                } else {

                    default_left_margin = width / 2;
                    default_right_margin = width / 2;
                }
            }
            SelectObject(dc, old_font);
            ReleaseDC(es->hwndSelf, dc);
        }

 if (action & EC_LEFTMARGIN) {
  es->format_rect.left -= es->left_margin;
  if (left != EC_USEFONTINFO)
   es->left_margin = left;
  else
   es->left_margin = default_left_margin;
  es->format_rect.left += es->left_margin;
 }

 if (action & EC_RIGHTMARGIN) {
  es->format_rect.right += es->right_margin;
  if (right != EC_USEFONTINFO)
   es->right_margin = right;
  else
   es->right_margin = default_right_margin;
  es->format_rect.right -= es->right_margin;
 }

 if (action & (EC_LEFTMARGIN | EC_RIGHTMARGIN)) {
  EDIT_AdjustFormatRect(es);
  if (repaint) EDIT_UpdateText(es, ((void*)0), TRUE);
 }

 TRACE("left=%d, right=%d\n", es->left_margin, es->right_margin);
}
