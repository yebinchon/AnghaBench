
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; int* buffer; int partial; int buf; } ;
typedef TYPE_1__ ge_GIF ;


 int lwan_strbuf_append_char (int ,char) ;
 int lwan_strbuf_append_str (int ,int*,int) ;

__attribute__((used)) static void end_key(ge_GIF *gif)
{
    int byte_offset;

    byte_offset = gif->offset / 8;
    if (gif->offset % 8)
        gif->buffer[byte_offset++] = gif->partial & 0xFF;

    lwan_strbuf_append_char(gif->buf, byte_offset);
    lwan_strbuf_append_str(gif->buf, gif->buffer, byte_offset);
    lwan_strbuf_append_char(gif->buf, '\0');

    gif->offset = gif->partial = 0;
}
