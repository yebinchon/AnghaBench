
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ snd_pos ;

void iwrap_buf_del(void) {
    if (snd_pos) snd_pos--;
}
