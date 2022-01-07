
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vtt_block_t ;
typedef int caption_frame_t ;


 int caption_frame_from_text (int *,char const*) ;
 char* vtt_block_data (int *) ;

int vtt_cue_to_caption_frame(vtt_block_t* cue, caption_frame_t* frame)
{
    const char* data = vtt_block_data(cue);
    return caption_frame_from_text(frame, data);
}
