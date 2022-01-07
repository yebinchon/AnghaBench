
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct obs_source_frame {size_t* linesize; int * data; } ;


 int copy_frame_data_line (struct obs_source_frame*,struct obs_source_frame const*,size_t,size_t) ;
 int memcpy (int ,int ,size_t) ;

__attribute__((used)) static inline void copy_frame_data_plane(struct obs_source_frame *dst,
      const struct obs_source_frame *src,
      uint32_t plane, uint32_t lines)
{
 if (dst->linesize[plane] != src->linesize[plane])
  for (uint32_t y = 0; y < lines; y++)
   copy_frame_data_line(dst, src, plane, y);
 else
  memcpy(dst->data[plane], src->data[plane],
         dst->linesize[plane] * lines);
}
