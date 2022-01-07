
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t num; int * array; } ;
struct vt_h264_encoder {TYPE_1__ extra_data; } ;



__attribute__((used)) static bool vt_h264_extra_data(void *data, uint8_t **extra_data, size_t *size)
{
 struct vt_h264_encoder *enc = (struct vt_h264_encoder *)data;
 *extra_data = enc->extra_data.array;
 *size = enc->extra_data.num;
 return 1;
}
