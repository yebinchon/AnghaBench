
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; } ;
typedef TYPE_1__ PHP_TIGER_CTX ;



__attribute__((used)) static inline void TigerDigest(unsigned char *digest_str, unsigned int digest_len, PHP_TIGER_CTX *context)
{
 unsigned int i;

 for (i = 0; i < digest_len; ++i) {
  digest_str[i] = (unsigned char) ((context->state[i/8] >> (8 * (i%8))) & 0xff);
 }
}
