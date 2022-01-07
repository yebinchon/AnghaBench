
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int caption_frame_cell_t ;
struct TYPE_3__ {int ** cell; } ;
typedef TYPE_1__ caption_frame_buffer_t ;


 int SCREEN_COLS ;
 int SCREEN_ROWS ;

__attribute__((used)) static caption_frame_cell_t* frame_buffer_cell(caption_frame_buffer_t* buff, int row, int col)
{
    if (!buff || 0 > row || SCREEN_ROWS <= row || 0 > col || SCREEN_COLS <= col) {
        return 0;
    }

    return &buff->cell[row][col];
}
