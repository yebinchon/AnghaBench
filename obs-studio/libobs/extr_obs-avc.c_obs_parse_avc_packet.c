
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serializer {int dummy; } ;
struct encoder_packet {int priority; int drop_priority; scalar_t__ size; scalar_t__ data; int keyframe; } ;
struct TYPE_2__ {scalar_t__ num; scalar_t__ array; } ;
struct array_output_data {TYPE_1__ bytes; } ;
typedef int ref ;


 int array_output_serializer_init (struct serializer*,struct array_output_data*) ;
 int get_drop_priority (int ) ;
 int serialize (struct serializer*,long*,int) ;
 int serialize_avc_data (struct serializer*,scalar_t__,scalar_t__,int *,int *) ;

void obs_parse_avc_packet(struct encoder_packet *avc_packet,
     const struct encoder_packet *src)
{
 struct array_output_data output;
 struct serializer s;
 long ref = 1;

 array_output_serializer_init(&s, &output);
 *avc_packet = *src;

 serialize(&s, &ref, sizeof(ref));
 serialize_avc_data(&s, src->data, src->size, &avc_packet->keyframe,
      &avc_packet->priority);

 avc_packet->data = output.bytes.array + sizeof(ref);
 avc_packet->size = output.bytes.num - sizeof(ref);
 avc_packet->drop_priority = get_drop_priority(avc_packet->priority);
}
