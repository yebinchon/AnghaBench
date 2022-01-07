
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct obs_source_frame {size_t* linesize; size_t* data; } ;


 int memcpy (size_t,size_t,size_t) ;

__attribute__((used)) static inline void copy_frame_data_line(struct obs_source_frame *dst,
     const struct obs_source_frame *src,
     uint32_t plane, uint32_t y)
{
 uint32_t pos_src = y * src->linesize[plane];
 uint32_t pos_dst = y * dst->linesize[plane];
 uint32_t bytes = dst->linesize[plane] < src->linesize[plane]
     ? dst->linesize[plane]
     : src->linesize[plane];

 memcpy(dst->data[plane] + pos_dst, src->data[plane] + pos_src, bytes);
}
