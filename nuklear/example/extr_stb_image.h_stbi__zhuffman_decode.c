
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* fast; } ;
typedef TYPE_1__ stbi__zhuffman ;
struct TYPE_9__ {int num_bits; size_t code_buffer; } ;
typedef TYPE_2__ stbi__zbuf ;


 size_t STBI__ZFAST_MASK ;
 int stbi__fill_bits (TYPE_2__*) ;
 int stbi__zhuffman_decode_slowpath (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int stbi__zhuffman_decode(stbi__zbuf *a, stbi__zhuffman *z)
{
   int b,s;
   if (a->num_bits < 16) stbi__fill_bits(a);
   b = z->fast[a->code_buffer & STBI__ZFAST_MASK];
   if (b) {
      s = b >> 9;
      a->code_buffer >>= s;
      a->num_bits -= s;
      return b & 511;
   }
   return stbi__zhuffman_decode_slowpath(a, z);
}
