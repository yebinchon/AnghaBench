
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct obs_output {scalar_t__ scaled_width; scalar_t__ scaled_height; int video; } ;


 scalar_t__ video_output_get_height (int ) ;
 scalar_t__ video_output_get_width (int ) ;

__attribute__((used)) static inline bool has_scaling(const struct obs_output *output)
{
 uint32_t video_width = video_output_get_width(output->video);
 uint32_t video_height = video_output_get_height(output->video);

 return output->scaled_width && output->scaled_height &&
        (video_width != output->scaled_width ||
  video_height != output->scaled_height);
}
