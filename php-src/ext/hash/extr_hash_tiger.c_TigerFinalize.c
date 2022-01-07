
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int passed; int length; int* buffer; int state; int passes; } ;
typedef TYPE_1__ PHP_TIGER_CTX ;


 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int tiger_compress (int ,int*,int ) ;

__attribute__((used)) static inline void TigerFinalize(PHP_TIGER_CTX *context)
{
 context->passed += (uint64_t) context->length << 3;

 context->buffer[context->length++] = 0x1;
 if (context->length % 8) {
  memset(&context->buffer[context->length], 0, 8-context->length%8);
  context->length += 8-context->length%8;
 }

 if (context->length > 56) {
  memset(&context->buffer[context->length], 0, 64 - context->length);
  tiger_compress(context->passes, ((uint64_t *) context->buffer), context->state);
  memset(context->buffer, 0, 56);
 } else {
  memset(&context->buffer[context->length], 0, 56 - context->length);
 }


 memcpy(&context->buffer[56], &context->passed, sizeof(uint64_t));
 tiger_compress(context->passes, ((uint64_t *) context->buffer), context->state);
}
