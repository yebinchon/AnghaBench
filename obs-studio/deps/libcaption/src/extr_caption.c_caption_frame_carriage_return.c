
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int libcaption_stauts_t ;
struct TYPE_5__ {scalar_t__ row; int rup; scalar_t__ col; } ;
struct TYPE_6__ {int write; TYPE_1__ state; } ;
typedef TYPE_2__ caption_frame_t ;
typedef int caption_frame_cell_t ;


 int LIBCAPTION_ERROR ;
 int LIBCAPTION_OK ;
 int SCREEN_COLS ;
 int SCREEN_ROWS ;
 int caption_frame_rollup (TYPE_2__*) ;
 int * frame_buffer_cell (int ,int,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

libcaption_stauts_t caption_frame_carriage_return(caption_frame_t* frame)
{
    if (0 > frame->state.row || SCREEN_ROWS <= frame->state.row) {
        return LIBCAPTION_ERROR;
    }

    int r = frame->state.row - (frame->state.rup - 1);

    if (0 >= r || !caption_frame_rollup(frame)) {
        return LIBCAPTION_OK;
    }

    for (; r < SCREEN_ROWS; ++r) {
        uint8_t* dst = (uint8_t*)frame_buffer_cell(frame->write, r - 1, 0);
        uint8_t* src = (uint8_t*)frame_buffer_cell(frame->write, r - 0, 0);
        memcpy(dst, src, sizeof(caption_frame_cell_t) * SCREEN_COLS);
    }

    frame->state.col = 0;
    caption_frame_cell_t* cell = frame_buffer_cell(frame->write, SCREEN_ROWS - 1, 0);
    memset(cell, 0, sizeof(caption_frame_cell_t) * SCREEN_COLS);
    return LIBCAPTION_OK;
}
