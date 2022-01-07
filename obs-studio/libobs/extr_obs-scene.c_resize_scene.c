
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {int dummy; } ;
typedef int obs_scene_t ;


 int resize_scene_base (int *,struct vec2*,struct vec2*,struct vec2*) ;

__attribute__((used)) static void resize_scene(obs_scene_t *scene)
{
 struct vec2 minv;
 struct vec2 maxv;
 struct vec2 scale;
 resize_scene_base(scene, &minv, &maxv, &scale);
}
