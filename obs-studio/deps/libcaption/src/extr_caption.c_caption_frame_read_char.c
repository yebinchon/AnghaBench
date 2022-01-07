
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int utf8_char_t ;
typedef int eia608_style_t ;
struct TYPE_5__ {int front; } ;
typedef TYPE_1__ caption_frame_t ;
struct TYPE_6__ {int uln; int const* data; int sty; } ;
typedef TYPE_2__ caption_frame_cell_t ;


 int const* EIA608_CHAR_NULL ;
 int eia608_style_white ;
 TYPE_2__* frame_buffer_cell (int *,int,int) ;

const utf8_char_t* caption_frame_read_char(caption_frame_t* frame, int row, int col, eia608_style_t* style, int* underline)
{

    caption_frame_cell_t* cell = frame_buffer_cell(&frame->front, row, col);

    if (!cell) {
        if (style) {
            (*style) = eia608_style_white;
        }

        if (underline) {
            (*underline) = 0;
        }

        return EIA608_CHAR_NULL;
    }

    if (style) {
        (*style) = cell->sty;
    }

    if (underline) {
        (*underline) = cell->uln;
    }

    return &cell->data[0];
}
