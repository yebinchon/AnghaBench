
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct serializer {int dummy; } ;
struct encoder_packet {scalar_t__ type; } ;
struct TYPE_2__ {size_t num; int * array; } ;
struct array_output_data {TYPE_1__ bytes; } ;
typedef int int32_t ;


 scalar_t__ OBS_ENCODER_VIDEO ;
 int array_output_serializer_init (struct serializer*,struct array_output_data*) ;
 int flv_audio (struct serializer*,int ,struct encoder_packet*,int) ;
 int flv_video (struct serializer*,int ,struct encoder_packet*,int) ;

void flv_packet_mux(struct encoder_packet *packet, int32_t dts_offset,
      uint8_t **output, size_t *size, bool is_header)
{
 struct array_output_data data;
 struct serializer s;

 array_output_serializer_init(&s, &data);

 if (packet->type == OBS_ENCODER_VIDEO)
  flv_video(&s, dts_offset, packet, is_header);
 else
  flv_audio(&s, dts_offset, packet, is_header);

 *output = data.bytes.array;
 *size = data.bytes.num;
}
