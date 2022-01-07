
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_scene {int audio_mutex; int video_mutex; } ;


 int bfree (struct obs_scene*) ;
 int pthread_mutex_destroy (int *) ;
 int remove_all_items (struct obs_scene*) ;

__attribute__((used)) static void scene_destroy(void *data)
{
 struct obs_scene *scene = data;

 remove_all_items(scene);

 pthread_mutex_destroy(&scene->video_mutex);
 pthread_mutex_destroy(&scene->audio_mutex);
 bfree(scene);
}
