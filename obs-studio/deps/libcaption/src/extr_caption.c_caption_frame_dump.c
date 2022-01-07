
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char utf8_char_t ;
typedef int caption_frame_t ;


 int CAPTION_FRAME_DUMP_BUF_SIZE ;
 int caption_frame_dump_buffer (int *,char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void caption_frame_dump(caption_frame_t* frame)
{
    utf8_char_t buff[CAPTION_FRAME_DUMP_BUF_SIZE];
    caption_frame_dump_buffer(frame, buff);
    fprintf(stderr, "%s\n", buff);
}
