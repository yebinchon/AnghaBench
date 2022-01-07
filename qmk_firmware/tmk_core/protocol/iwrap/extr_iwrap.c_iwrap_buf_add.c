
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MUX_BUF_SIZE ;
 int * buf ;
 int snd_pos ;

void iwrap_buf_add(uint8_t c) {

    if (snd_pos < MUX_BUF_SIZE - 1) buf[snd_pos++] = c;
}
