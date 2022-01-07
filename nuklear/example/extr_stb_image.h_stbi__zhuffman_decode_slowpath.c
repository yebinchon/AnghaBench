
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* maxcode; int* firstcode; int* firstsymbol; int* size; int* value; } ;
typedef TYPE_1__ stbi__zhuffman ;
struct TYPE_6__ {int code_buffer; int num_bits; } ;
typedef TYPE_2__ stbi__zbuf ;


 int STBI_ASSERT (int) ;
 int STBI__ZFAST_BITS ;
 int stbi__bit_reverse (int,int) ;

__attribute__((used)) static int stbi__zhuffman_decode_slowpath(stbi__zbuf *a, stbi__zhuffman *z)
{
   int b,s,k;


   k = stbi__bit_reverse(a->code_buffer, 16);
   for (s=STBI__ZFAST_BITS+1; ; ++s)
      if (k < z->maxcode[s])
         break;
   if (s == 16) return -1;

   b = (k >> (16-s)) - z->firstcode[s] + z->firstsymbol[s];
   STBI_ASSERT(z->size[b] == s);
   a->code_buffer >>= s;
   a->num_bits -= s;
   return z->value[b];
}
