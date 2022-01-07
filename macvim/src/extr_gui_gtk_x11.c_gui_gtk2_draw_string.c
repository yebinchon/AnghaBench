
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_21__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_13__ ;
typedef struct TYPE_29__ TYPE_10__ ;


typedef int char_u ;
struct TYPE_40__ {scalar_t__ data; } ;
struct TYPE_39__ {int width; int height; int y; int x; } ;
struct TYPE_33__ {scalar_t__ x_offset; int width; } ;
struct TYPE_31__ {scalar_t__ is_cluster_start; } ;
struct TYPE_38__ {TYPE_2__ geometry; TYPE_1__ attr; } ;
struct TYPE_37__ {int* log_clusters; int num_glyphs; TYPE_7__* glyphs; } ;
struct TYPE_30__ {int level; int font; int shape_engine; } ;
struct TYPE_36__ {int offset; TYPE_13__ analysis; int length; } ;
struct TYPE_35__ {TYPE_7__* glyphs; } ;
struct TYPE_34__ {int * window; } ;
struct TYPE_32__ {int num_cols; int char_width; int text_gc; int * text_context; scalar_t__ font_can_bold; int * wide_font; int ascii_font; TYPE_4__* ascii_glyphs; int char_height; int border_offset; TYPE_3__* drawarea; } ;
struct TYPE_29__ {scalar_t__ vc_type; } ;
typedef TYPE_5__ PangoItem ;
typedef TYPE_6__ PangoGlyphString ;
typedef TYPE_7__ PangoGlyphInfo ;
typedef int PangoAttrList ;
typedef TYPE_8__ GdkRectangle ;
typedef TYPE_9__ GList ;


 scalar_t__ CONV_NONE ;
 int DRAW_BOLD ;
 int DRAW_ITALIC ;
 int FILL_Y (int) ;
 int INSERT_PANGO_ATTR (int ,int *,int ,int) ;
 int MAX (int ,int) ;
 int PANGO_SCALE ;
 int PANGO_STYLE_ITALIC ;
 int PANGO_WEIGHT_BOLD ;
 int* alloc (int) ;
 int apply_wide_font_attr (int*,int,int *) ;
 int count_cluster_cells (int*,TYPE_5__*,TYPE_6__*,int,int*,int*) ;
 int default_shape_engine ;
 int draw_glyph_string (int,int,int,int,int ,TYPE_6__*) ;
 int draw_under (int,int,int,int) ;
 TYPE_9__* g_list_delete_link (TYPE_9__*,TYPE_9__*) ;
 int g_return_val_if_fail (int ,int) ;
 int gdk_gc_set_clip_origin (int ,int ,int ) ;
 int gdk_gc_set_clip_rectangle (int ,TYPE_8__*) ;
 TYPE_21__ gui ;
 int mb_ptr2cells (int*) ;
 int mb_ptr2len (int*) ;
 int mch_memmove (int*,int*,int) ;
 TYPE_10__ output_conv ;
 int * pango_attr_list_new () ;
 int pango_attr_list_unref (int *) ;
 int pango_attr_style_new (int ) ;
 int pango_attr_weight_new (int ) ;
 int pango_glyph_string_free (TYPE_6__*) ;
 TYPE_6__* pango_glyph_string_new () ;
 int pango_glyph_string_set_size (TYPE_6__*,int) ;
 int pango_item_free (TYPE_5__*) ;
 TYPE_9__* pango_itemize (int *,char const*,int ,int,int *,int *) ;
 int pango_shape (char const*,int ,TYPE_13__*,TYPE_6__*) ;
 int setup_zero_width_cluster (TYPE_5__*,TYPE_7__*,int,int,int) ;
 int* string_convert (TYPE_10__*,int*,int*) ;
 int stub1 (int*) ;
 int stub2 (int*) ;
 int utf_ptr2cells (int*) ;
 int utf_ptr2len (int*) ;
 int utf_valid_string (int*,int*) ;
 int vim_free (int*) ;

int
gui_gtk2_draw_string(int row, int col, char_u *s, int len, int flags)
{
    GdkRectangle area;
    PangoGlyphString *glyphs;
    int column_offset = 0;
    int i;
    char_u *conv_buf = ((void*)0);
    char_u *new_conv_buf;
    int convlen;
    char_u *sp, *bp;
    int plen;

    if (gui.text_context == ((void*)0) || gui.drawarea->window == ((void*)0))
 return len;

    if (output_conv.vc_type != CONV_NONE)
    {






 convlen = len;
 conv_buf = string_convert(&output_conv, s, &convlen);
 g_return_val_if_fail(conv_buf != ((void*)0), len);




 for (sp = s, bp = conv_buf; sp < s + len && bp < conv_buf + convlen; )
 {
     plen = utf_ptr2len(bp);
     if ((*mb_ptr2cells)(sp) == 2 && utf_ptr2cells(bp) == 1)
     {
  new_conv_buf = alloc(convlen + 2);
  if (new_conv_buf == ((void*)0))
      return len;
  plen += bp - conv_buf;
  mch_memmove(new_conv_buf, conv_buf, plen);
  new_conv_buf[plen] = ' ';
  mch_memmove(new_conv_buf + plen + 1, conv_buf + plen,
         convlen - plen + 1);
  vim_free(conv_buf);
  conv_buf = new_conv_buf;
  ++convlen;
  bp = conv_buf + plen;
  plen = 1;
     }
     sp += (*mb_ptr2len)(sp);
     bp += plen;
 }
 s = conv_buf;
 len = convlen;
    }





    area.x = gui.border_offset;
    area.y = FILL_Y(row);
    area.width = gui.num_cols * gui.char_width;
    area.height = gui.char_height;

    gdk_gc_set_clip_origin(gui.text_gc, 0, 0);
    gdk_gc_set_clip_rectangle(gui.text_gc, &area);

    glyphs = pango_glyph_string_new();






    if (!(flags & DRAW_ITALIC)
     && !((flags & DRAW_BOLD) && gui.font_can_bold)
     && gui.ascii_glyphs != ((void*)0))
    {
 char_u *p;

 for (p = s; p < s + len; ++p)
     if (*p & 0x80)
  goto not_ascii;

 pango_glyph_string_set_size(glyphs, len);

 for (i = 0; i < len; ++i)
 {
     glyphs->glyphs[i] = gui.ascii_glyphs->glyphs[s[i]];
     glyphs->log_clusters[i] = i;
 }

 draw_glyph_string(row, col, len, flags, gui.ascii_font, glyphs);

 column_offset = len;
    }
    else
not_ascii:
    {
 PangoAttrList *attr_list;
 GList *item_list;
 int cluster_width;
 int last_glyph_rbearing;
 int cells = 0;



 if (!utf_valid_string(s, s + len))
 {
     column_offset = len;
     goto skipitall;
 }


 cluster_width = PANGO_SCALE * gui.char_width;


 last_glyph_rbearing = PANGO_SCALE * gui.char_width;

 attr_list = pango_attr_list_new();



 if (gui.wide_font != ((void*)0))
     apply_wide_font_attr(s, len, attr_list);

 if ((flags & DRAW_BOLD) && gui.font_can_bold)
     INSERT_PANGO_ATTR(pango_attr_weight_new(PANGO_WEIGHT_BOLD),
         attr_list, 0, len);
 if (flags & DRAW_ITALIC)
     INSERT_PANGO_ATTR(pango_attr_style_new(PANGO_STYLE_ITALIC),
         attr_list, 0, len);






 item_list = pango_itemize(gui.text_context,
      (const char *)s, 0, len, attr_list, ((void*)0));

 while (item_list != ((void*)0))
 {
     PangoItem *item;
     int item_cells = 0;

     item = (PangoItem *)item_list->data;
     item_list = g_list_delete_link(item_list, item_list);
     item->analysis.level = (item->analysis.level + 1) & (~1U);



     item->analysis.shape_engine = default_shape_engine;

     pango_shape((const char *)s + item->offset, item->length,
   &item->analysis, glyphs);
     for (i = 0; i < glyphs->num_glyphs; ++i)
     {
  PangoGlyphInfo *glyph;

  glyph = &glyphs->glyphs[i];

  if (glyph->attr.is_cluster_start)
  {
      int cellcount;

      cellcount = count_cluster_cells(
   s, item, glyphs, i, &cluster_width,
   (item_list != ((void*)0)) ? &last_glyph_rbearing : ((void*)0));

      if (cellcount > 0)
      {
   int width;

   width = cellcount * gui.char_width * PANGO_SCALE;
   glyph->geometry.x_offset +=
         MAX(0, width - cluster_width) / 2;
   glyph->geometry.width = width;
      }
      else
      {




   setup_zero_width_cluster(item, glyph, cells,
       cluster_width,
       last_glyph_rbearing);
      }

      item_cells += cellcount;
      cells = cellcount;
  }
  else if (i > 0)
  {
      int width;
      if (glyph->geometry.x_offset >= 0)
      {
   glyphs->glyphs[i].geometry.width =
      glyphs->glyphs[i - 1].geometry.width;
   glyphs->glyphs[i - 1].geometry.width = 0;
      }
      width = cells * gui.char_width * PANGO_SCALE;
      glyph->geometry.x_offset +=
         MAX(0, width - cluster_width) / 2;
  }
  else
  {
      glyph->geometry.width = 0;
  }
     }


     draw_glyph_string(row, col + column_offset, item_cells,
         flags, item->analysis.font, glyphs);

     pango_item_free(item);

     column_offset += item_cells;
 }

 pango_attr_list_unref(attr_list);
    }

skipitall:

    draw_under(flags, row, col, column_offset);

    pango_glyph_string_free(glyphs);
    vim_free(conv_buf);

    gdk_gc_set_clip_rectangle(gui.text_gc, ((void*)0));

    return column_offset;
}
