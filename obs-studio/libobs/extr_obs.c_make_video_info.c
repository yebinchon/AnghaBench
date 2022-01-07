
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_output_info {char* name; int cache_size; int colorspace; int range; int height; int width; int fps_den; int fps_num; int format; } ;
struct obs_video_info {int colorspace; int range; int output_height; int output_width; int fps_den; int fps_num; int output_format; } ;



__attribute__((used)) static inline void make_video_info(struct video_output_info *vi,
       struct obs_video_info *ovi)
{
 vi->name = "video";
 vi->format = ovi->output_format;
 vi->fps_num = ovi->fps_num;
 vi->fps_den = ovi->fps_den;
 vi->width = ovi->output_width;
 vi->height = ovi->output_height;
 vi->range = ovi->range;
 vi->colorspace = ovi->colorspace;
 vi->cache_size = 6;
}
