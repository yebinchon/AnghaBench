
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {int format; int height; int color_range_max; int color_range_min; int full_range; int color_matrix; int timestamp; int flip; } ;
 int copy_frame_data_plane (struct obs_source_frame*,struct obs_source_frame const*,int,int) ;
 int memcpy (int ,int ,size_t const) ;

__attribute__((used)) static void copy_frame_data(struct obs_source_frame *dst,
       const struct obs_source_frame *src)
{
 dst->flip = src->flip;
 dst->full_range = src->full_range;
 dst->timestamp = src->timestamp;
 memcpy(dst->color_matrix, src->color_matrix, sizeof(float) * 16);
 if (!dst->full_range) {
  size_t const size = sizeof(float) * 3;
  memcpy(dst->color_range_min, src->color_range_min, size);
  memcpy(dst->color_range_max, src->color_range_max, size);
 }

 switch (src->format) {
 case 139:
  copy_frame_data_plane(dst, src, 0, dst->height);
  copy_frame_data_plane(dst, src, 1, dst->height / 2);
  copy_frame_data_plane(dst, src, 2, dst->height / 2);
  break;

 case 134:
  copy_frame_data_plane(dst, src, 0, dst->height);
  copy_frame_data_plane(dst, src, 1, dst->height / 2);
  break;

 case 136:
 case 138:
  copy_frame_data_plane(dst, src, 0, dst->height);
  copy_frame_data_plane(dst, src, 1, dst->height);
  copy_frame_data_plane(dst, src, 2, dst->height);
  break;

 case 128:
 case 129:
 case 132:
 case 135:
 case 133:
 case 142:
 case 141:
 case 131:
 case 143:
 case 144:
  copy_frame_data_plane(dst, src, 0, dst->height);
  break;

 case 140:
  copy_frame_data_plane(dst, src, 0, dst->height);
  copy_frame_data_plane(dst, src, 1, dst->height / 2);
  copy_frame_data_plane(dst, src, 2, dst->height / 2);
  copy_frame_data_plane(dst, src, 3, dst->height);
  break;

 case 137:
 case 130:
  copy_frame_data_plane(dst, src, 0, dst->height);
  copy_frame_data_plane(dst, src, 1, dst->height);
  copy_frame_data_plane(dst, src, 2, dst->height);
  copy_frame_data_plane(dst, src, 3, dst->height);
  break;
 }
}
