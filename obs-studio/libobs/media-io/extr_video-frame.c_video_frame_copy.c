
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct video_frame {int* linesize; int * data; } ;
typedef enum video_format { ____Placeholder_video_format } video_format ;
 int memcpy (int ,int ,int) ;

void video_frame_copy(struct video_frame *dst, const struct video_frame *src,
        enum video_format format, uint32_t cy)
{
 switch (format) {
 case 135:
  return;

 case 139:
  memcpy(dst->data[0], src->data[0], src->linesize[0] * cy);
  memcpy(dst->data[1], src->data[1], src->linesize[1] * cy / 2);
  memcpy(dst->data[2], src->data[2], src->linesize[2] * cy / 2);
  break;

 case 134:
  memcpy(dst->data[0], src->data[0], src->linesize[0] * cy);
  memcpy(dst->data[1], src->data[1], src->linesize[1] * cy / 2);
  break;

 case 131:
 case 128:
 case 129:
 case 132:
 case 133:
 case 142:
 case 141:
 case 143:
 case 144:
  memcpy(dst->data[0], src->data[0], src->linesize[0] * cy);
  break;

 case 136:
 case 138:
  memcpy(dst->data[0], src->data[0], src->linesize[0] * cy);
  memcpy(dst->data[1], src->data[1], src->linesize[1] * cy);
  memcpy(dst->data[2], src->data[2], src->linesize[2] * cy);
  break;

 case 140:
  memcpy(dst->data[0], src->data[0], src->linesize[0] * cy);
  memcpy(dst->data[1], src->data[1], src->linesize[1] * cy / 2);
  memcpy(dst->data[2], src->data[2], src->linesize[2] * cy / 2);
  memcpy(dst->data[3], src->data[3], src->linesize[3] * cy);
  break;

 case 137:
 case 130:
  memcpy(dst->data[0], src->data[0], src->linesize[0] * cy);
  memcpy(dst->data[1], src->data[1], src->linesize[1] * cy);
  memcpy(dst->data[2], src->data[2], src->linesize[2] * cy);
  memcpy(dst->data[3], src->data[3], src->linesize[3] * cy);
  break;
 }
}
