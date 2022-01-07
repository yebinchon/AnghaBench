
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gif_bitmap_callback_vt ;
struct TYPE_4__ {int decoded_frame; int bitmap_callbacks; } ;
typedef TYPE_1__ gif_animation ;


 int GIF_INVALID_FRAME ;
 int memset (TYPE_1__*,int ,int) ;

void gif_create(gif_animation *gif, gif_bitmap_callback_vt *bitmap_callbacks) {
    memset(gif, 0, sizeof(gif_animation));
    gif->bitmap_callbacks = *bitmap_callbacks;
    gif->decoded_frame = GIF_INVALID_FRAME;
}
