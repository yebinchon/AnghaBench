
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct obs_core_video {scalar_t__ base_height; scalar_t__ base_width; } ;


 int labs (long) ;

__attribute__((used)) static inline bool resolution_close(struct obs_core_video *video,
        uint32_t width, uint32_t height)
{
 long width_cmp = (long)video->base_width - (long)width;
 long height_cmp = (long)video->base_height - (long)height;

 return labs(width_cmp) <= 16 && labs(height_cmp) <= 16;
}
