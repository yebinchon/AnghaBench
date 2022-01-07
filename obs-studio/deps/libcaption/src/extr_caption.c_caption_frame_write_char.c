
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int eia608_style_t ;
struct TYPE_5__ {int write; } ;
typedef TYPE_1__ caption_frame_t ;
struct TYPE_6__ {int uln; int sty; int * data; } ;
typedef TYPE_2__ caption_frame_cell_t ;


 int _eia608_from_utf8 (char const*) ;
 TYPE_2__* frame_buffer_cell (int ,int,int) ;
 scalar_t__ utf8_char_copy (int *,char const*) ;

int caption_frame_write_char(caption_frame_t* frame, int row, int col, eia608_style_t style, int underline, const char* c)
{
    if (!frame->write || !_eia608_from_utf8(c)) {
        return 0;
    }

    caption_frame_cell_t* cell = frame_buffer_cell(frame->write, row, col);

    if (cell && utf8_char_copy(&cell->data[0], c)) {
        cell->uln = underline;
        cell->sty = style;
        return 1;
    }

    return 0;
}
