
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int offset; int partial; int* buffer; int buf; } ;
typedef TYPE_1__ ge_GIF ;


 int lwan_strbuf_append_char (int ,int) ;
 int lwan_strbuf_append_str (int ,int*,int) ;

__attribute__((used)) static void put_key(ge_GIF *gif, uint16_t key, int key_size)
{
    int byte_offset, bit_offset, bits_to_write;

    byte_offset = gif->offset / 8;
    bit_offset = gif->offset % 8;
    gif->partial |= ((uint32_t)key) << bit_offset;
    bits_to_write = bit_offset + key_size;

    while (bits_to_write >= 8) {
        gif->buffer[byte_offset++] = gif->partial & 0xFF;

        if (byte_offset == 0xFF) {
            lwan_strbuf_append_char(gif->buf, 0xff);
            lwan_strbuf_append_str(gif->buf, gif->buffer, 0xff);

            byte_offset = 0;
        }

        gif->partial >>= 8;
        bits_to_write -= 8;
    }
    gif->offset = (gif->offset + key_size) % (0xFF * 8);
}
