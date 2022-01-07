
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_scene_t ;


 int * create_private_id (char*,char const*) ;

obs_scene_t *obs_scene_create_private(const char *name)
{
 return create_private_id("scene", name);
}
