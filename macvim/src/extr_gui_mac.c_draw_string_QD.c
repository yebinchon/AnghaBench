
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int char_u ;
typedef int UInt32 ;
struct TYPE_6__ {scalar_t__ vc_type; } ;
struct TYPE_5__ {void* bottom; void* right; void* top; void* left; } ;
typedef int StyleParameter ;
typedef TYPE_1__ Rect ;


 scalar_t__ CONV_NONE ;
 int Columns ;
 int DRAW_BOLD ;
 int DRAW_TRANSP ;
 int DRAW_UNDERC ;
 int DRAW_UNDERL ;
 int DrawText (char*,int ,int) ;
 int EraseRect (TYPE_1__*) ;
 void* FILL_X (int) ;
 void* FILL_Y (int) ;
 int LineTo (void*,void*) ;
 int MoveTo (void*,void*) ;
 int QDSwapTextFlags (int) ;
 void* TEXT_X (int) ;
 void* TEXT_Y (int) ;
 int TextFace (int ) ;
 int TextMode (int ) ;
 int bold ;
 int draw_undercurl (int,int,int,int) ;
 int gMacSystemVersion ;
 scalar_t__ has_mbyte ;
 int kQDUseCGTextMetrics ;
 int kQDUseCGTextRendering ;
 int mb_string2cells (int *,int) ;
 int normal ;
 TYPE_2__ output_conv ;
 scalar_t__ p_antialias ;
 scalar_t__ p_linespace ;
 int srcCopy ;
 int srcOr ;
 int * string_convert (TYPE_2__*,int *,int*) ;
 int underline ;
 int vim_free (int *) ;

__attribute__((used)) static void
draw_string_QD(int row, int col, char_u *s, int len, int flags)
{
    if (gMacSystemVersion >= 0x1020)
    {

 UInt32 qd_flags = (p_antialias ?
        kQDUseCGTextRendering | kQDUseCGTextMetrics : 0);
 QDSwapTextFlags(qd_flags);
    }
    if (((gMacSystemVersion >= 0x1020 && p_antialias) || p_linespace != 0)
     && !(flags & DRAW_TRANSP))
    {
 Rect rc;

 rc.left = FILL_X(col);
 rc.top = FILL_Y(row);
 rc.right = FILL_X(col + len) + (col + len == Columns);
 rc.bottom = FILL_Y(row + 1);
 EraseRect(&rc);
    }

    if (gMacSystemVersion >= 0x1020 && p_antialias)
    {
 StyleParameter face;

 face = normal;
 if (flags & DRAW_BOLD)
     face |= bold;
 if (flags & DRAW_UNDERL)
     face |= underline;
 TextFace(face);


 TextMode(srcOr);

 MoveTo(TEXT_X(col), TEXT_Y(row));
 DrawText((char*)s, 0, len);
    }
    else
    {

 TextMode(srcCopy);
 TextFace(normal);



 if (flags & DRAW_TRANSP)
 {
     TextMode(srcOr);
 }

 MoveTo(TEXT_X(col), TEXT_Y(row));
 DrawText((char *)s, 0, len);

 if (flags & DRAW_BOLD)
 {
     TextMode(srcOr);
     MoveTo(TEXT_X(col) + 1, TEXT_Y(row));
     DrawText((char *)s, 0, len);
 }

 if (flags & DRAW_UNDERL)
 {
     MoveTo(FILL_X(col), FILL_Y(row + 1) - 1);
     LineTo(FILL_X(col + len) - 1, FILL_Y(row + 1) - 1);
 }
    }

    if (flags & DRAW_UNDERC)
 draw_undercurl(flags, row, col, len);




}
