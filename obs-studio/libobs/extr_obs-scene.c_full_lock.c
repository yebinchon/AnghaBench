
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_scene {int dummy; } ;


 int audio_lock (struct obs_scene*) ;
 int video_lock (struct obs_scene*) ;

__attribute__((used)) static inline void full_lock(struct obs_scene *scene)
{
 video_lock(scene);
 audio_lock(scene);
}
