
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t distance; int pos; int * history; } ;
typedef TYPE_1__ lzma_coder ;



__attribute__((used)) static void
decode_buffer(lzma_coder *coder, uint8_t *buffer, size_t size)
{
 const size_t distance = coder->distance;

 for (size_t i = 0; i < size; ++i) {
  buffer[i] += coder->history[(distance + coder->pos) & 0xFF];
  coder->history[coder->pos-- & 0xFF] = buffer[i];
 }
}
