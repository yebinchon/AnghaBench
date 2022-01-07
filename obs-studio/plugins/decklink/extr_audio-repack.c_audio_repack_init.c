
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct audio_repack {int base_src_size; int base_dst_size; int extra_dst_size; int * repack_func; } ;
typedef size_t audio_repack_mode_t ;


 int memset (struct audio_repack*,int ,int) ;
 size_t repack_mode_8ch_swap ;
 size_t repack_mode_8to5ch_swap ;
 size_t repack_mode_8to6ch_swap ;
 int repack_squash ;
 int repack_squash_swap ;

int audio_repack_init(struct audio_repack *repack,
        audio_repack_mode_t repack_mode, uint8_t sample_bit)
{
 memset(repack, 0, sizeof(*repack));

 if (sample_bit != 16)
  return -1;
 int _audio_repack_ch[8] = {3, 4, 5, 6, 5, 6, 8, 8};
 repack->base_src_size = 8 * (16 / 8);
 repack->base_dst_size = _audio_repack_ch[repack_mode] * (16 / 8);
 repack->extra_dst_size = 8 - _audio_repack_ch[repack_mode];
 repack->repack_func = &repack_squash;
 if (repack_mode == repack_mode_8to5ch_swap ||
     repack_mode == repack_mode_8to6ch_swap ||
     repack_mode == repack_mode_8ch_swap)
  repack->repack_func = &repack_squash_swap;

 return 0;
}
