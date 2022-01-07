
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {int full_range; int format; } ;
struct obs_source {int dummy; } ;
 int assert (int ) ;
 int get_convert_type (int ,int ) ;
 int set_bgr3_sizes (struct obs_source*,struct obs_source_frame const*) ;
 int set_nv12_sizes (struct obs_source*,struct obs_source_frame const*) ;
 int set_packed422_sizes (struct obs_source*,struct obs_source_frame const*) ;
 int set_packed444_alpha_sizes (struct obs_source*,struct obs_source_frame const*) ;
 int set_planar420_alpha_sizes (struct obs_source*,struct obs_source_frame const*) ;
 int set_planar420_sizes (struct obs_source*,struct obs_source_frame const*) ;
 int set_planar422_alpha_sizes (struct obs_source*,struct obs_source_frame const*) ;
 int set_planar422_sizes (struct obs_source*,struct obs_source_frame const*) ;
 int set_planar444_alpha_sizes (struct obs_source*,struct obs_source_frame const*) ;
 int set_planar444_sizes (struct obs_source*,struct obs_source_frame const*) ;
 int set_rgb_limited_sizes (struct obs_source*,struct obs_source_frame const*) ;
 int set_y800_sizes (struct obs_source*,struct obs_source_frame const*) ;

__attribute__((used)) static inline bool init_gpu_conversion(struct obs_source *source,
           const struct obs_source_frame *frame)
{
 switch (get_convert_type(frame->format, frame->full_range)) {
 case 136:
  return set_packed422_sizes(source, frame);

 case 140:
  return set_planar420_sizes(source, frame);

 case 138:
  return set_planar422_sizes(source, frame);

 case 129:
  return set_nv12_sizes(source, frame);

 case 135:
  return set_planar444_sizes(source, frame);

 case 132:
  return set_y800_sizes(source, frame);

 case 128:
  return set_rgb_limited_sizes(source, frame);

 case 131:
  return set_bgr3_sizes(source, frame);

 case 139:
  return set_planar420_alpha_sizes(source, frame);

 case 137:
  return set_planar422_alpha_sizes(source, frame);

 case 134:
  return set_planar444_alpha_sizes(source, frame);

 case 133:
  return set_packed444_alpha_sizes(source, frame);

 case 130:
  assert(0 && "No conversion requested");
  break;
 }
 return 0;
}
