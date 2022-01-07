
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t cache_size; } ;
struct TYPE_9__ {size_t num; int * array; } ;
struct TYPE_8__ {int input_mutex; int data_mutex; int update_semaphore; int * cache; TYPE_1__ info; TYPE_5__ inputs; } ;
typedef TYPE_2__ video_t ;
struct video_frame {int dummy; } ;


 int bfree (TYPE_2__*) ;
 int da_free (TYPE_5__) ;
 int os_sem_destroy (int ) ;
 int pthread_mutex_destroy (int *) ;
 int video_frame_free (struct video_frame*) ;
 int video_input_free (int *) ;
 int video_output_stop (TYPE_2__*) ;

void video_output_close(video_t *video)
{
 if (!video)
  return;

 video_output_stop(video);

 for (size_t i = 0; i < video->inputs.num; i++)
  video_input_free(&video->inputs.array[i]);
 da_free(video->inputs);

 for (size_t i = 0; i < video->info.cache_size; i++)
  video_frame_free((struct video_frame *)&video->cache[i]);

 os_sem_destroy(video->update_semaphore);
 pthread_mutex_destroy(&video->data_mutex);
 pthread_mutex_destroy(&video->input_mutex);
 bfree(video);
}
