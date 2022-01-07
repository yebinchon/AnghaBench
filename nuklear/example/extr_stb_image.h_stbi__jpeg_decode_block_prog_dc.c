
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ spec_end; int code_bits; scalar_t__ succ_high; int succ_low; TYPE_1__* img_comp; } ;
typedef TYPE_2__ stbi__jpeg ;
typedef int stbi__huffman ;
typedef int data ;
struct TYPE_8__ {int dc_pred; } ;


 int memset (short*,int ,int) ;
 int stbi__err (char*,char*) ;
 int stbi__extend_receive (TYPE_2__*,int) ;
 int stbi__grow_buffer_unsafe (TYPE_2__*) ;
 scalar_t__ stbi__jpeg_get_bit (TYPE_2__*) ;
 int stbi__jpeg_huff_decode (TYPE_2__*,int *) ;

__attribute__((used)) static int stbi__jpeg_decode_block_prog_dc(stbi__jpeg *j, short data[64], stbi__huffman *hdc, int b)
{
   int diff,dc;
   int t;
   if (j->spec_end != 0) return stbi__err("can't merge dc and ac", "Corrupt JPEG");

   if (j->code_bits < 16) stbi__grow_buffer_unsafe(j);

   if (j->succ_high == 0) {

      memset(data,0,64*sizeof(data[0]));
      t = stbi__jpeg_huff_decode(j, hdc);
      diff = t ? stbi__extend_receive(j, t) : 0;

      dc = j->img_comp[b].dc_pred + diff;
      j->img_comp[b].dc_pred = dc;
      data[0] = (short) (dc << j->succ_low);
   } else {

      if (stbi__jpeg_get_bit(j))
         data[0] += (short) (1 << j->succ_low);
   }
   return 1;
}
