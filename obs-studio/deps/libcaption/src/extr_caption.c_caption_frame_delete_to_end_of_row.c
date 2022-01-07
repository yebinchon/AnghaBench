
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int libcaption_stauts_t ;
struct TYPE_5__ {int col; int row; } ;
struct TYPE_6__ {TYPE_1__ state; scalar_t__ write; } ;
typedef TYPE_2__ caption_frame_t ;


 int EIA608_CHAR_NULL ;
 int LIBCAPTION_READY ;
 int SCREEN_COLS ;
 int caption_frame_write_char (TYPE_2__*,int ,int,int ,int ,int ) ;
 int eia608_style_white ;

libcaption_stauts_t caption_frame_delete_to_end_of_row(caption_frame_t* frame)
{
    int c;
    if (frame->write) {
        for (c = frame->state.col; c < SCREEN_COLS; ++c) {
            caption_frame_write_char(frame, frame->state.row, c, eia608_style_white, 0, EIA608_CHAR_NULL);
        }
    }





    return LIBCAPTION_READY;
}
