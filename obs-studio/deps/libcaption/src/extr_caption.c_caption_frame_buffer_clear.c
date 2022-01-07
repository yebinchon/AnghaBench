
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caption_frame_buffer_t ;


 int memset (int *,int ,int) ;

void caption_frame_buffer_clear(caption_frame_buffer_t* buff)
{
    memset(buff, 0, sizeof(caption_frame_buffer_t));
}
