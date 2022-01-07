
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int libcaption_stauts_t ;
struct TYPE_5__ {scalar_t__ row; scalar_t__ col; int uln; int sty; } ;
struct TYPE_6__ {TYPE_1__ state; } ;
typedef TYPE_2__ caption_frame_t ;


 int LIBCAPTION_OK ;
 scalar_t__ SCREEN_COLS ;
 scalar_t__ SCREEN_ROWS ;
 scalar_t__ caption_frame_write_char (TYPE_2__*,scalar_t__,scalar_t__,int ,int ,char*) ;

libcaption_stauts_t eia608_write_char(caption_frame_t* frame, char* c)
{
    if (0 == c || 0 == c[0] || SCREEN_ROWS <= frame->state.row || 0 > frame->state.row || SCREEN_COLS <= frame->state.col || 0 > frame->state.col) {

    } else if (caption_frame_write_char(frame, frame->state.row, frame->state.col, frame->state.sty, frame->state.uln, c)) {
        frame->state.col += 1;
    }

    return LIBCAPTION_OK;
}
