
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int libcaption_stauts_t ;
struct TYPE_5__ {int col; int row; } ;
struct TYPE_6__ {TYPE_1__ state; } ;
typedef TYPE_2__ caption_frame_t ;


 int EIA608_CHAR_NULL ;
 int LIBCAPTION_READY ;
 int caption_frame_write_char (TYPE_2__*,int ,int,int ,int ,int ) ;
 int eia608_style_white ;

libcaption_stauts_t caption_frame_backspace(caption_frame_t* frame)
{

    frame->state.col = (0 < frame->state.col) ? (frame->state.col - 1) : 0;
    caption_frame_write_char(frame, frame->state.row, frame->state.col, eia608_style_white, 0, EIA608_CHAR_NULL);
    return LIBCAPTION_READY;
}
