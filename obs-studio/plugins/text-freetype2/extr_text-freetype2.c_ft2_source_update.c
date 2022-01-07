
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct ft2_source {int custom_width; int word_wrap; int* color; int log_lines; int log_mode; scalar_t__ font_size; int from_file; int file_load_failed; char const* font_name; char const* font_style; int font_flags; char* texbuf; char* text; char const* text_file; int * font_face; int last_checked; scalar_t__ max_h; int * draw_effect; void* outline_text; void* drop_shadow; } ;
typedef int obs_data_t ;


 int FT_ENCODING_UNICODE ;
 int FT_Select_Charmap (int *,int ) ;
 int FT_Set_Pixel_Sizes (int *,int ,scalar_t__) ;
 int LOG_WARNING ;
 int bfree (char*) ;
 int blog (int ,char*,char const*) ;
 void* bstrdup (char const*) ;
 char* bzalloc (int) ;
 int cache_glyphs (struct ft2_source*,char*) ;
 int cache_standard_glyphs (struct ft2_source*) ;
 int * ft2_lib ;
 int * gs_effect_create_from_file (char*,char**) ;
 int init_font (struct ft2_source*) ;
 int load_text_from_file (struct ft2_source*,char const*) ;
 void* obs_data_get_bool (int *,char*) ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 int * obs_data_get_obj (int *,char*) ;
 char* obs_data_get_string (int *,char*) ;
 int obs_data_release (int *) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 char* obs_module_file (char*) ;
 int os_file_exists (char const*) ;
 int os_gettime_ns () ;
 int os_utf8_to_wcs_ptr (char const*,int ,char**) ;
 int read_from_end (struct ft2_source*,char const*) ;
 int set_up_vertex_buffer (struct ft2_source*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 int texbuf_h ;
 int texbuf_w ;

__attribute__((used)) static void ft2_source_update(void *data, obs_data_t *settings)
{
 struct ft2_source *srcdata = data;
 obs_data_t *font_obj = obs_data_get_obj(settings, "font");
 bool vbuf_needs_update = 0;
 bool word_wrap = 0;
 uint32_t color[2];
 uint32_t custom_width = 0;

 const char *font_name = obs_data_get_string(font_obj, "face");
 const char *font_style = obs_data_get_string(font_obj, "style");
 uint16_t font_size = (uint16_t)obs_data_get_int(font_obj, "size");
 uint32_t font_flags = (uint32_t)obs_data_get_int(font_obj, "flags");

 if (!font_obj)
  return;

 srcdata->drop_shadow = obs_data_get_bool(settings, "drop_shadow");
 srcdata->outline_text = obs_data_get_bool(settings, "outline");
 word_wrap = obs_data_get_bool(settings, "word_wrap");

 color[0] = (uint32_t)obs_data_get_int(settings, "color1");
 color[1] = (uint32_t)obs_data_get_int(settings, "color2");

 custom_width = (uint32_t)obs_data_get_int(settings, "custom_width");
 if (custom_width >= 100) {
  if (custom_width != srcdata->custom_width) {
   srcdata->custom_width = custom_width;
   vbuf_needs_update = 1;
  }
 } else {
  if (srcdata->custom_width >= 100)
   vbuf_needs_update = 1;
  srcdata->custom_width = 0;
 }

 if (word_wrap != srcdata->word_wrap) {
  srcdata->word_wrap = word_wrap;
  vbuf_needs_update = 1;
 }

 if (color[0] != srcdata->color[0] || color[1] != srcdata->color[1]) {
  srcdata->color[0] = color[0];
  srcdata->color[1] = color[1];
  vbuf_needs_update = 1;
 }

 bool from_file = obs_data_get_bool(settings, "from_file");
 bool chat_log_mode = obs_data_get_bool(settings, "log_mode");
 uint32_t log_lines = (uint32_t)obs_data_get_int(settings, "log_lines");

 if (srcdata->log_lines != log_lines) {
  srcdata->log_lines = log_lines;
  vbuf_needs_update = 1;
 }
 srcdata->log_mode = chat_log_mode;

 if (ft2_lib == ((void*)0))
  goto error;

 if (srcdata->draw_effect == ((void*)0)) {
  char *effect_file = ((void*)0);
  char *error_string = ((void*)0);

  effect_file = obs_module_file("text_default.effect");

  if (effect_file) {
   obs_enter_graphics();
   srcdata->draw_effect = gs_effect_create_from_file(
    effect_file, &error_string);
   obs_leave_graphics();

   bfree(effect_file);
   if (error_string != ((void*)0))
    bfree(error_string);
  }
 }

 if (srcdata->font_size != font_size || srcdata->from_file != from_file)
  vbuf_needs_update = 1;

 srcdata->file_load_failed = 0;
 srcdata->from_file = from_file;

 if (srcdata->font_name != ((void*)0)) {
  if (strcmp(font_name, srcdata->font_name) == 0 &&
      strcmp(font_style, srcdata->font_style) == 0 &&
      font_flags == srcdata->font_flags &&
      font_size == srcdata->font_size)
   goto skip_font_load;

  bfree(srcdata->font_name);
  bfree(srcdata->font_style);
  srcdata->font_name = ((void*)0);
  srcdata->font_style = ((void*)0);
  srcdata->max_h = 0;
  vbuf_needs_update = 1;
 }

 srcdata->font_name = bstrdup(font_name);
 srcdata->font_style = bstrdup(font_style);
 srcdata->font_size = font_size;
 srcdata->font_flags = font_flags;

 if (!init_font(srcdata) || srcdata->font_face == ((void*)0)) {
  blog(LOG_WARNING, "FT2-text: Failed to load font %s",
       srcdata->font_name);
  goto error;
 } else {
  FT_Set_Pixel_Sizes(srcdata->font_face, 0, srcdata->font_size);
  FT_Select_Charmap(srcdata->font_face, FT_ENCODING_UNICODE);
 }

 if (srcdata->texbuf != ((void*)0)) {
  bfree(srcdata->texbuf);
  srcdata->texbuf = ((void*)0);
 }
 srcdata->texbuf = bzalloc(texbuf_w * texbuf_h);

 if (srcdata->font_face)
  cache_standard_glyphs(srcdata);

skip_font_load:
 if (from_file) {
  const char *tmp = obs_data_get_string(settings, "text_file");

  if (!tmp || !*tmp || !os_file_exists(tmp)) {
   const char *emptystr = " ";

   bfree(srcdata->text);
   srcdata->text = ((void*)0);

   os_utf8_to_wcs_ptr(emptystr, strlen(emptystr),
        &srcdata->text);
   blog(LOG_WARNING,
        "FT2-text: Failed to open %s for "
        "reading",
        tmp);
  } else {
   if (srcdata->text_file != ((void*)0) &&
       strcmp(srcdata->text_file, tmp) == 0 &&
       !vbuf_needs_update)
    goto error;

   bfree(srcdata->text_file);

   srcdata->text_file = bstrdup(tmp);
   if (chat_log_mode)
    read_from_end(srcdata, tmp);
   else
    load_text_from_file(srcdata, tmp);
   srcdata->last_checked = os_gettime_ns();
  }
 } else {
  const char *tmp = obs_data_get_string(settings, "text");
  if (!tmp || !*tmp)
   goto error;

  if (srcdata->text != ((void*)0)) {
   bfree(srcdata->text);
   srcdata->text = ((void*)0);
  }

  os_utf8_to_wcs_ptr(tmp, strlen(tmp), &srcdata->text);
 }

 if (srcdata->font_face) {
  cache_glyphs(srcdata, srcdata->text);
  set_up_vertex_buffer(srcdata);
 }

error:
 obs_data_release(font_obj);
}
