
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_scene {int dummy; } ;


 int audio_unlock (struct obs_scene*) ;
 int video_unlock (struct obs_scene*) ;

__attribute__((used)) static inline void full_unlock(struct obs_scene *scene)
{
 audio_unlock(scene);
 video_unlock(scene);
}
