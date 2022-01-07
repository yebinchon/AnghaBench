
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAUXCLICKY_DISABLE_OUTPUT ;
 int note_playing ;

void fauxclicky_stop() {
    FAUXCLICKY_DISABLE_OUTPUT;
    note_playing = 0;
}
