
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_output_info {scalar_t__ height; scalar_t__ width; scalar_t__ fps_den; scalar_t__ fps_num; } ;



__attribute__((used)) static inline bool valid_video_params(const struct video_output_info *info)
{
 return info->height != 0 && info->width != 0 && info->fps_den != 0 &&
        info->fps_num != 0;
}
