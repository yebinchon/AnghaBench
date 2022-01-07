
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct vt_h264_encoder {int dummy; } ;
struct darray {int dummy; } ;
typedef int CMBlockBufferRef ;


 size_t CFSwapInt16BigToHost (int ) ;
 size_t CFSwapInt32BigToHost (size_t) ;
 int CMBlockBufferGetDataPointer (int ,int ,int *,size_t*,char**) ;
 int LOG_ERROR ;
 int VT_BLOG (int ,char*) ;
 int packet_put (struct darray*,size_t*,size_t) ;
 int packet_put_startcode (struct darray*,int) ;

__attribute__((used)) static void convert_block_nals_to_annexb(struct vt_h264_encoder *enc,
      struct darray *packet,
      CMBlockBufferRef block,
      int nal_length_bytes)
{
 size_t block_size;
 uint8_t *block_buf;

 CMBlockBufferGetDataPointer(block, 0, ((void*)0), &block_size,
        (char **)&block_buf);

 size_t bytes_remaining = block_size;

 while (bytes_remaining > 0) {
  uint32_t nal_size;
  if (nal_length_bytes == 1)
   nal_size = block_buf[0];
  else if (nal_length_bytes == 2)
   nal_size = CFSwapInt16BigToHost(
    ((uint16_t *)block_buf)[0]);
  else if (nal_length_bytes == 4)
   nal_size = CFSwapInt32BigToHost(
    ((uint32_t *)block_buf)[0]);
  else
   return;

  bytes_remaining -= nal_length_bytes;
  block_buf += nal_length_bytes;

  if (bytes_remaining < nal_size) {
   VT_BLOG(LOG_ERROR, "invalid nal block");
   return;
  }

  packet_put_startcode(packet, 3);
  packet_put(packet, block_buf, nal_size);

  bytes_remaining -= nal_size;
  block_buf += nal_size;
 }
}
