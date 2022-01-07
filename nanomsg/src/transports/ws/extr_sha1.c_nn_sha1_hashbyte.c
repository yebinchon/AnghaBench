
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nn_sha1 {int bytes_hashed; } ;


 int nn_sha1_add (struct nn_sha1*,int ) ;

void nn_sha1_hashbyte (struct nn_sha1 *self, uint8_t data)
{
    ++self->bytes_hashed;
    nn_sha1_add (self, data);
}
