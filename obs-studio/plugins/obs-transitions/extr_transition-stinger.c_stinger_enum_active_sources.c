
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stinger_info {scalar_t__ media_source; int source; scalar_t__ transitioning; } ;
typedef int (* obs_source_enum_proc_t ) (int ,scalar_t__,void*) ;



__attribute__((used)) static void stinger_enum_active_sources(void *data,
     obs_source_enum_proc_t enum_callback,
     void *param)
{
 struct stinger_info *s = data;
 if (s->media_source && s->transitioning)
  enum_callback(s->source, s->media_source, param);
}
