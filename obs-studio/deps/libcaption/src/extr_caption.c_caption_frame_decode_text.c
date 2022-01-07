
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int libcaption_stauts_t ;
typedef int caption_frame_t ;


 int LIBCAPTION_OK ;
 int caption_frame_backspace (int *) ;
 scalar_t__ eia608_is_westeu (int ) ;
 size_t eia608_to_utf8 (int ,int*,char*,char*) ;
 int eia608_write_char (int *,char*) ;

libcaption_stauts_t caption_frame_decode_text(caption_frame_t* frame, uint16_t cc_data)
{
    int chan;
    char char1[5], char2[5];
    size_t chars = eia608_to_utf8(cc_data, &chan, &char1[0], &char2[0]);

    if (eia608_is_westeu(cc_data)) {

        caption_frame_backspace(frame);
    }

    if (0 < chars) {
        eia608_write_char(frame, char1);
    }

    if (1 < chars) {
        eia608_write_char(frame, char2);
    }

    return LIBCAPTION_OK;
}
