
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t utf8_size_t ;
typedef scalar_t__ utf8_char_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {int back; int * write; } ;
typedef TYPE_1__ caption_frame_t ;


 int SCREEN_COLS ;
 size_t SCREEN_ROWS ;
 int caption_frame_end (TYPE_1__*) ;
 int caption_frame_init (TYPE_1__*) ;
 int caption_frame_write_char (TYPE_1__*,int,int,int ,int ,scalar_t__ const*) ;
 int eia608_style_white ;
 int strlen (scalar_t__ const*) ;
 size_t utf8_char_length (scalar_t__ const*) ;
 scalar_t__ utf8_char_whitespace (scalar_t__ const*) ;
 size_t utf8_wrap_length (scalar_t__ const*,int ) ;

int caption_frame_from_text(caption_frame_t* frame, const utf8_char_t* data)
{
    ssize_t size = (ssize_t)strlen(data);
    caption_frame_init(frame);
    frame->write = &frame->back;

    for (size_t r = 0; (*data) && size && r < SCREEN_ROWS;) {

        while (size && utf8_char_whitespace(data)) {
            size_t s = utf8_char_length(data);
            data += s, size -= (ssize_t)s;
        }


        utf8_size_t char_count = utf8_wrap_length(data, SCREEN_COLS);

        for (size_t c = 0; c < char_count; ++c) {
            size_t char_length = utf8_char_length(data);
            caption_frame_write_char(frame, (int)r, (int)c, eia608_style_white, 0, data);
            data += char_length, size -= (ssize_t)char_length;
        }

        r += char_count ? 1 : 0;
    }

    caption_frame_end(frame);
    return 0;
}
