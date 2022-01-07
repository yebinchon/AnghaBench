
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vt_h264_encoder {int dummy; } ;
struct darray {size_t num; int const* array; } ;
typedef int OSStatus ;
typedef int CMFormatDescriptionRef ;


 int CMVideoFormatDescriptionGetH264ParameterSetAtIndex (int ,size_t,int const**,size_t*,int *,int *) ;
 int LOG_ERROR ;
 int log_osstatus (int ,struct vt_h264_encoder*,char*,int ) ;
 int noErr ;
 int packet_put (struct darray*,int const*,size_t) ;
 int packet_put_startcode (struct darray*,int) ;

__attribute__((used)) static bool handle_keyframe(struct vt_h264_encoder *enc,
       CMFormatDescriptionRef format_desc,
       size_t param_count, struct darray *packet,
       struct darray *extra_data)
{
 OSStatus code;
 const uint8_t *param;
 size_t param_size;

 for (size_t i = 0; i < param_count; i++) {
  code = CMVideoFormatDescriptionGetH264ParameterSetAtIndex(
   format_desc, i, &param, &param_size, ((void*)0), ((void*)0));
  if (code != noErr) {
   log_osstatus(LOG_ERROR, enc,
         "getting NAL parameter "
         "at index",
         code);
   return 0;
  }

  packet_put_startcode(packet, 4);
  packet_put(packet, param, param_size);
 }



 if (extra_data != ((void*)0))
  packet_put(extra_data, packet->array, packet->num);

 return 1;
}
