
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* count; unsigned char const* buffer; int state; } ;
typedef TYPE_1__ SHA1_CTX ;


 int SHA1Transform (int ,unsigned char const*) ;
 int memcpy (unsigned char const*,unsigned char const*,unsigned int) ;

void SHA1Update(SHA1_CTX* context, const unsigned char* data, unsigned int len)
{
unsigned int i, j;

    j = (context->count[0] >> 3) & 63;
    if ((context->count[0] += len << 3) < (len << 3)) context->count[1]++;
    context->count[1] += (len >> 29);
    if ((j + len) > 63) {
 memcpy(&context->buffer[j], data, (i = 64-j));
 SHA1Transform(context->state, context->buffer);
 for ( ; i + 63 < len; i += 64) {
     SHA1Transform(context->state, &data[i]);
 }
 j = 0;
    }
    else i = 0;
    memcpy(&context->buffer[j], &data[i], len - i);
}
