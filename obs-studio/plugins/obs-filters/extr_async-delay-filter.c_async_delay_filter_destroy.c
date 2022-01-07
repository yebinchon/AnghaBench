
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_delay_data {int audio_frames; int video_frames; int audio_output; } ;


 int bfree (void*) ;
 int circlebuf_free (int *) ;
 int free_audio_packet (int *) ;

__attribute__((used)) static void async_delay_filter_destroy(void *data)
{
 struct async_delay_data *filter = data;

 free_audio_packet(&filter->audio_output);
 circlebuf_free(&filter->video_frames);
 circlebuf_free(&filter->audio_frames);
 bfree(data);
}
