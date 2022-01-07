
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft2_source {int * font_face; int font_flags; int font_style; int font_size; int font_name; } ;
typedef int FT_Long ;


 int FT_Done_Face (int *) ;
 scalar_t__ FT_New_Face (int ,char const*,int ,int **) ;
 int ft2_lib ;
 char* get_font_path (int ,int ,int ,int ,int *) ;

__attribute__((used)) static bool init_font(struct ft2_source *srcdata)
{
 FT_Long index;
 const char *path = get_font_path(srcdata->font_name, srcdata->font_size,
      srcdata->font_style,
      srcdata->font_flags, &index);
 if (!path)
  return 0;

 if (srcdata->font_face != ((void*)0)) {
  FT_Done_Face(srcdata->font_face);
  srcdata->font_face = ((void*)0);
 }

 return FT_New_Face(ft2_lib, path, index, &srcdata->font_face) == 0;
}
