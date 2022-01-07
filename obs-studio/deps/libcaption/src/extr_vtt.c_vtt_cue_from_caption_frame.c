
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* cue_tail; } ;
typedef TYPE_2__ vtt_t ;
struct TYPE_14__ {scalar_t__ timestamp; } ;
typedef TYPE_3__ vtt_block_t ;
typedef int utf8_char_t ;
struct TYPE_15__ {scalar_t__ timestamp; } ;
typedef TYPE_4__ caption_frame_t ;
struct TYPE_12__ {scalar_t__ duration; scalar_t__ timestamp; } ;


 scalar_t__ CAPTION_FRAME_TEXT_BYTES ;
 int VTT_CUE ;
 int caption_frame_to_text (TYPE_4__*,int *) ;
 int strcat (char*,char*) ;
 int * vtt_block_data (TYPE_3__*) ;
 TYPE_3__* vtt_block_new (TYPE_2__*,int *,scalar_t__,int ) ;

vtt_block_t* vtt_cue_from_caption_frame(caption_frame_t* frame, vtt_t* vtt)
{
    if (vtt->cue_tail && 0 >= vtt->cue_tail->duration) {
        vtt->cue_tail->duration = frame->timestamp - vtt->cue_tail->timestamp;
    }


    vtt_block_t* cue = vtt_block_new(vtt, ((void*)0), 2 + CAPTION_FRAME_TEXT_BYTES, VTT_CUE);
    utf8_char_t* data = vtt_block_data(cue);

    caption_frame_to_text(frame, data);
    cue->timestamp = frame->timestamp;

    strcat((char*)data, "\r\n");
    return cue;
}
