
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MD5Context {int* state; scalar_t__* count; } ;



__attribute__((used)) static void __md5_Init(struct MD5Context *context)
{
 context->count[0] = context->count[1] = 0;


 context->state[0] = 0x67452301;
 context->state[1] = 0xefcdab89;
 context->state[2] = 0x98badcfe;
 context->state[3] = 0x10325476;
}
