
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char char_u ;
struct TYPE_13__ {int norm_pixel; } ;
struct TYPE_12__ {int x; int member_1; int member_0; } ;
struct TYPE_10__ {void* y; void* x; } ;
struct TYPE_9__ {void* y; void* x; } ;
struct TYPE_11__ {TYPE_2__ lr; TYPE_1__ ul; } ;
typedef TYPE_3__ PhRect_t ;
typedef TYPE_4__ PhPoint_t ;


 int DRAW_BOLD ;
 int DRAW_END ;
 int DRAW_START ;
 int DRAW_TRANSP ;
 int DRAW_UNDERL ;
 void* FILL_X (int) ;
 void* FILL_Y (int) ;
 int MB_LEN_MAX ;
 int PgDrawIRect (void*,void*,void*,void*,int ) ;
 int PgDrawText (char*,int,TYPE_4__*,int ) ;
 int PgDrawTextArea (char*,int,TYPE_3__*,int ) ;
 int PgSetUnderline (int ,int ,int ) ;
 int PgSetUserClip (TYPE_3__*) ;
 int Pg_DRAW_FILL ;
 int Pg_TEXT_BOTTOM ;
 int Pg_TRANSPARENT ;
 int PxTranslateToUTF (int *,char*,int,int*,char*,int,int*) ;
 int TEXT_X (int) ;
 int TEXT_Y (int) ;
 scalar_t__ TRUE ;
 int * charset_translate ;
 scalar_t__ enc_utf8 ;
 TYPE_5__ gui ;
 scalar_t__ is_ignore_draw ;
 int p_linespace ;
 char* realloc (char*,int) ;

void
gui_mch_draw_string(int row, int col, char_u *s, int len, int flags)
{
    static char *utf8_buffer = ((void*)0);
    static int utf8_len = 0;

    PhPoint_t pos = { TEXT_X(col), TEXT_Y(row) };
    PhRect_t rect;

    if (is_ignore_draw == TRUE)
 return;

    DRAW_START;

    if (!(flags & DRAW_TRANSP))
    {
 PgDrawIRect(
  FILL_X(col), FILL_Y(row),
  FILL_X(col + len) - 1, FILL_Y(row + 1) - 1,
  Pg_DRAW_FILL);
    }

    if (flags & DRAW_UNDERL)
 PgSetUnderline(gui.norm_pixel, Pg_TRANSPARENT, 0);

    if (charset_translate != ((void*)0)



    )
    {
 int src_taken, dst_made;


 if (utf8_len < len)
 {
     utf8_buffer = realloc(utf8_buffer, len * MB_LEN_MAX);
     utf8_len = len;
 }

 PxTranslateToUTF(
  charset_translate,
  s,
  len,
  &src_taken,
  utf8_buffer,
  utf8_len,
  &dst_made);
 s = utf8_buffer;
 len = dst_made;
    }

    PgDrawText(s, len, &pos, 0);

    if (flags & DRAW_BOLD)
    {

 rect.ul.x = FILL_X(col) + 1;
 rect.ul.y = FILL_Y(row);
 rect.lr.x = FILL_X(col + len) - 1;
 rect.lr.y = FILL_Y(row + 1) - 1;
 rect.lr.y -= (p_linespace + 1) / 2;

 PgDrawTextArea(s, len, &rect, Pg_TEXT_BOTTOM);

    }

    if (flags & DRAW_UNDERL)
 PgSetUnderline(Pg_TRANSPARENT, Pg_TRANSPARENT, 0);

    DRAW_END;
}
