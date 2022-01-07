
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {unsigned int* state; } ;
typedef TYPE_1__ PHP_SNEFRU_CTX ;


 int Snefru (unsigned int*) ;
 int ZEND_SECURE_ZERO (unsigned int*,int) ;

__attribute__((used)) static inline void SnefruTransform(PHP_SNEFRU_CTX *context, const unsigned char input[32])
{
 int i, j;

 for (i = 0, j = 0; i < 32; i += 4, ++j) {
  context->state[8+j] = ((unsigned)input[i] << 24) | ((unsigned)input[i+1] << 16) |
        ((unsigned)input[i+2] << 8) | (unsigned)input[i+3];
 }
 Snefru(context->state);
 ZEND_SECURE_ZERO(&context->state[8], sizeof(uint32_t) * 8);
}
