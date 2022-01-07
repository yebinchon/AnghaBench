
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int_u ;
typedef int char_u ;
struct TYPE_3__ {scalar_t__ size; int style; } ;
typedef int * GuiFont ;
typedef TYPE_1__ FontQueryInfo ;


 int MAX_FONT_TAG ;
 int PF_STYLE_ANTIALIAS ;
 int PF_STYLE_BOLD ;
 int PF_STYLE_ITALIC ;
 int PHFONT_INFO_ALIAS ;
 int PHFONT_INFO_BOLD ;
 int PHFONT_INFO_FIXED ;
 int PHFONT_INFO_ITALIC ;
 int * PfGenerateFontName (int *,int,int,int *) ;
 int PfQueryFontInfo (int *,TYPE_1__*) ;
 int * alloc (int ) ;
 int vim_free (int *) ;

__attribute__((used)) static GuiFont
gui_ph_get_font(
 char_u *font_name,
 int_u font_flags,
 int_u font_size,


 int_u enforce
 )
{
    char_u *font_tag;
    FontQueryInfo info;
    int_u style;

    font_tag = alloc(MAX_FONT_TAG);
    if (font_tag != ((void*)0))
    {
 if (PfGenerateFontName(font_name, font_flags, font_size,
      font_tag) != ((void*)0))
 {

     style = PHFONT_INFO_FIXED;

     if (enforce & PF_STYLE_BOLD)
  style |= PHFONT_INFO_BOLD;
     if (enforce & PF_STYLE_ANTIALIAS)
  style |= PHFONT_INFO_ALIAS;
     if (enforce & PF_STYLE_ITALIC)
  style |= PHFONT_INFO_ITALIC;

     PfQueryFontInfo(font_tag, &info);

     if (info.size == 0)
  font_size = 0;



     if (font_size == info.size &&
      style == (info.style & style))
  return (GuiFont)font_tag;
 }
 vim_free(font_tag);
    }
    return ((void*)0);
}
