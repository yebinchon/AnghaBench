
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; } ;
struct obs_source {TYPE_1__ context; } ;
typedef int obs_scene_t ;


 struct obs_source* obs_source_create_private (char const*,char const*,int *) ;

__attribute__((used)) static inline obs_scene_t *create_private_id(const char *id, const char *name)
{
 struct obs_source *source = obs_source_create_private(id, name, ((void*)0));
 return source->context.data;
}
