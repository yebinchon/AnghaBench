
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct ft2_source {int last_checked; int update_file; scalar_t__ m_timestamp; int text; int text_file; scalar_t__ log_mode; int from_file; } ;


 int UNUSED_PARAMETER (float) ;
 int cache_glyphs (struct ft2_source*,int ) ;
 scalar_t__ get_modified_timestamp (int ) ;
 int load_text_from_file (struct ft2_source*,int ) ;
 int os_gettime_ns () ;
 int read_from_end (struct ft2_source*,int ) ;
 int set_up_vertex_buffer (struct ft2_source*) ;

__attribute__((used)) static void ft2_video_tick(void *data, float seconds)
{
 struct ft2_source *srcdata = data;
 if (srcdata == ((void*)0))
  return;
 if (!srcdata->from_file || !srcdata->text_file)
  return;

 if (os_gettime_ns() - srcdata->last_checked >= 1000000000) {
  time_t t = get_modified_timestamp(srcdata->text_file);
  srcdata->last_checked = os_gettime_ns();

  if (srcdata->update_file) {
   if (srcdata->log_mode)
    read_from_end(srcdata, srcdata->text_file);
   else
    load_text_from_file(srcdata,
          srcdata->text_file);
   cache_glyphs(srcdata, srcdata->text);
   set_up_vertex_buffer(srcdata);
   srcdata->update_file = 0;
  }

  if (srcdata->m_timestamp != t) {
   srcdata->m_timestamp = t;
   srcdata->update_file = 1;
  }
 }

 UNUSED_PARAMETER(seconds);
}
