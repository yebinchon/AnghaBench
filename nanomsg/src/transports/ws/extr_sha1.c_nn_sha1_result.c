
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nn_sha1 {int buffer_offset; int bytes_hashed; int* state; scalar_t__ is_little_endian; } ;


 int nn_sha1_add (struct nn_sha1*,int) ;

uint8_t* nn_sha1_result (struct nn_sha1 *self)
{
    int i;


    nn_sha1_add (self, 0x80);

    while (self->buffer_offset != 56)
        nn_sha1_add (self, 0x00);




    nn_sha1_add (self, 0);
    nn_sha1_add (self, 0);
    nn_sha1_add (self, 0);
    nn_sha1_add (self, self->bytes_hashed >> 29);
    nn_sha1_add (self, self->bytes_hashed >> 21);
    nn_sha1_add (self, self->bytes_hashed >> 13);
    nn_sha1_add (self, self->bytes_hashed >> 5);
    nn_sha1_add (self, self->bytes_hashed << 3);


    if (self->is_little_endian) {
        for (i = 0; i < 5; i++) {
            self->state [i] =
                (((self->state [i]) << 24) & 0xFF000000) |
                (((self->state [i]) << 8) & 0x00FF0000) |
                (((self->state [i]) >> 8) & 0x0000FF00) |
                (((self->state [i]) >> 24) & 0x000000FF);
        }
    }


    return (uint8_t*) self->state;
}
