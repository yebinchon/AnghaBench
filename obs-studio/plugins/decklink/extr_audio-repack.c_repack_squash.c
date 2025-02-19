
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct audio_repack {int extra_dst_size; scalar_t__ packet_buffer; } ;
typedef int __m128i ;


 int _mm_load_si128 (int ) ;
 int _mm_storeu_si128 (int *,int ) ;
 scalar_t__ check_buffer (struct audio_repack*,int) ;

int repack_squash(struct audio_repack *repack, const uint8_t *bsrc,
    uint32_t frame_count)
{
 if (check_buffer(repack, frame_count) < 0)
  return -1;

 int squash = repack->extra_dst_size;
 const __m128i *src = (__m128i *)bsrc;
 const __m128i *esrc = src + frame_count;
 uint16_t *dst = (uint16_t *)repack->packet_buffer;




 if (squash > 0) {
  while (src != esrc) {
   __m128i target = _mm_load_si128(src++);
   _mm_storeu_si128((__m128i *)dst, target);
   dst += 8 - squash;
  }
 }

 return 0;
}
