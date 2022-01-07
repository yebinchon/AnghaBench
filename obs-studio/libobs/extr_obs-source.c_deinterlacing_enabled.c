
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source {scalar_t__ deinterlace_mode; } ;


 scalar_t__ OBS_DEINTERLACE_MODE_DISABLE ;

__attribute__((used)) static inline bool deinterlacing_enabled(const struct obs_source *source)
{
 return source->deinterlace_mode != OBS_DEINTERLACE_MODE_DISABLE;
}
