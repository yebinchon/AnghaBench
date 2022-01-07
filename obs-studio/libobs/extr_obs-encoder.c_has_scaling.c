
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct obs_encoder {scalar_t__ scaled_width; scalar_t__ scaled_height; int media; } ;


 scalar_t__ video_output_get_height (int ) ;
 scalar_t__ video_output_get_width (int ) ;

__attribute__((used)) static inline bool has_scaling(const struct obs_encoder *encoder)
{
 uint32_t video_width = video_output_get_width(encoder->media);
 uint32_t video_height = video_output_get_height(encoder->media);

 return encoder->scaled_width && encoder->scaled_height &&
        (video_width != encoder->scaled_width ||
  video_height != encoder->scaled_height);
}
