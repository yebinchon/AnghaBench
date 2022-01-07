
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef scalar_t__ libcaption_stauts_t ;
struct TYPE_12__ {scalar_t__ state; } ;
struct TYPE_10__ {scalar_t__ cc_data; } ;
struct TYPE_11__ {scalar_t__ status; double timestamp; int write; TYPE_3__ xds; TYPE_1__ state; } ;
typedef TYPE_2__ caption_frame_t ;


 scalar_t__ LIBCAPTION_ERROR ;
 scalar_t__ LIBCAPTION_OK ;
 scalar_t__ LIBCAPTION_READY ;
 scalar_t__ caption_frame_decode_control (TYPE_2__*,scalar_t__) ;
 scalar_t__ caption_frame_decode_midrowchange (TYPE_2__*,scalar_t__) ;
 scalar_t__ caption_frame_decode_preamble (TYPE_2__*,scalar_t__) ;
 scalar_t__ caption_frame_decode_text (TYPE_2__*,scalar_t__) ;
 scalar_t__ caption_frame_painton (TYPE_2__*) ;
 scalar_t__ eia608_is_basicna (scalar_t__) ;
 scalar_t__ eia608_is_control (scalar_t__) ;
 scalar_t__ eia608_is_midrowchange (scalar_t__) ;
 scalar_t__ eia608_is_padding (scalar_t__) ;
 scalar_t__ eia608_is_preamble (scalar_t__) ;
 scalar_t__ eia608_is_specialna (scalar_t__) ;
 scalar_t__ eia608_is_westeu (scalar_t__) ;
 scalar_t__ eia608_is_xds (scalar_t__) ;
 int eia608_parity_varify (scalar_t__) ;
 void* xds_decode (TYPE_3__*,scalar_t__) ;

libcaption_stauts_t caption_frame_decode(caption_frame_t* frame, uint16_t cc_data, double timestamp)
{
    if (!eia608_parity_varify(cc_data)) {
        frame->status = LIBCAPTION_ERROR;
        return frame->status;
    }

    if (eia608_is_padding(cc_data)) {
        frame->status = LIBCAPTION_OK;
        return frame->status;
    }

    if (0 > frame->timestamp || LIBCAPTION_READY == frame->status) {
        frame->timestamp = timestamp;
    }


    if ((eia608_is_specialna(cc_data) || eia608_is_control(cc_data)) && cc_data == frame->state.cc_data) {
        frame->status = LIBCAPTION_OK;
        return frame->status;
    }

    frame->state.cc_data = cc_data;

    if (frame->xds.state) {
        frame->status = xds_decode(&frame->xds, cc_data);
    } else if (eia608_is_xds(cc_data)) {
        frame->status = xds_decode(&frame->xds, cc_data);
    } else if (eia608_is_control(cc_data)) {
        frame->status = caption_frame_decode_control(frame, cc_data);
    } else if (eia608_is_basicna(cc_data) || eia608_is_specialna(cc_data) || eia608_is_westeu(cc_data)) {


        if (!frame->write) {
            frame->status = LIBCAPTION_OK;
            return frame->status;
        }

        frame->status = caption_frame_decode_text(frame, cc_data);


        if (LIBCAPTION_OK == frame->status && caption_frame_painton(frame)) {
            frame->status = LIBCAPTION_READY;
        }
    } else if (eia608_is_preamble(cc_data)) {
        frame->status = caption_frame_decode_preamble(frame, cc_data);
    } else if (eia608_is_midrowchange(cc_data)) {
        frame->status = caption_frame_decode_midrowchange(frame, cc_data);
    }

    return frame->status;
}
