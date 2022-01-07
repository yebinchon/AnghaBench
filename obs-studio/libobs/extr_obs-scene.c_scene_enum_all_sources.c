
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_enum_proc_t ;


 int scene_enum_sources (void*,int ,void*,int) ;

__attribute__((used)) static void scene_enum_all_sources(void *data,
       obs_source_enum_proc_t enum_callback,
       void *param)
{
 scene_enum_sources(data, enum_callback, param, 0);
}
