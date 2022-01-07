
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nn_sha1 {char is_little_endian; int* state; scalar_t__ buffer_offset; scalar_t__ bytes_hashed; } ;



void nn_sha1_init (struct nn_sha1 *self)
{

    union {
        uint32_t i;
        char c[4];
    } test = { 0x00000001 };

    self->is_little_endian = test.c[0];


    self->state [0] = 0x67452301;
    self->state [1] = 0xefcdab89;
    self->state [2] = 0x98badcfe;
    self->state [3] = 0x10325476;
    self->state [4] = 0xc3d2e1f0;
    self->bytes_hashed = 0;
    self->buffer_offset = 0;
}
