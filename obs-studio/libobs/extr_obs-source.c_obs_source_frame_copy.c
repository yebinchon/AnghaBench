
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {int dummy; } ;


 int copy_frame_data (struct obs_source_frame*,struct obs_source_frame const*) ;

void obs_source_frame_copy(struct obs_source_frame *dst,
      const struct obs_source_frame *src)
{
 copy_frame_data(dst, src);
}
