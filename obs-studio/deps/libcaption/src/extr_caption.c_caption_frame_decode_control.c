
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
typedef int libcaption_stauts_t ;
typedef int eia608_control_t ;
struct TYPE_8__ {int rup; int col; } ;
struct TYPE_9__ {TYPE_1__ state; int back; int * write; int front; } ;
typedef TYPE_2__ caption_frame_t ;


 int LIBCAPTION_OK ;
 int LIBCAPTION_READY ;
 int caption_frame_backspace (TYPE_2__*) ;
 int caption_frame_buffer_clear (int *) ;
 int caption_frame_carriage_return (TYPE_2__*) ;
 int caption_frame_delete_to_end_of_row (TYPE_2__*) ;
 int caption_frame_end (TYPE_2__*) ;
 int eia608_parse_control (int ,int*) ;





libcaption_stauts_t caption_frame_decode_control(caption_frame_t* frame, uint16_t cc_data)
{
    int cc;
    eia608_control_t cmd = eia608_parse_control(cc_data, &cc);

    switch (cmd) {

    case 137:
        frame->state.rup = 0;
        frame->write = &frame->front;
        return LIBCAPTION_OK;

    case 140:
        caption_frame_buffer_clear(&frame->front);
        return LIBCAPTION_READY;


    case 136:
        frame->state.rup = 1;
        frame->write = &frame->front;
        return LIBCAPTION_OK;

    case 135:
        frame->state.rup = 2;
        frame->write = &frame->front;
        return LIBCAPTION_OK;

    case 134:
        frame->state.rup = 3;
        frame->write = &frame->front;
        return LIBCAPTION_OK;

    case 143:
        return caption_frame_carriage_return(frame);


    case 144:
        return caption_frame_backspace(frame);
    case 142:
        return caption_frame_delete_to_end_of_row(frame);


    case 138:
        frame->state.rup = 0;
        frame->write = &frame->back;
        return LIBCAPTION_OK;

    case 139:
        caption_frame_buffer_clear(&frame->back);
        return LIBCAPTION_OK;

    case 141:
        return caption_frame_end(frame);


    case 131:
    case 130:
    case 129:
    case 128:
        frame->state.col += (cmd - 131);
        return LIBCAPTION_OK;


    default:
    case 146:
    case 145:
    case 133:
    case 132:
        return LIBCAPTION_OK;
    }
}
