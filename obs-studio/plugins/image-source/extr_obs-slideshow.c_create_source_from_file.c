
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;
typedef int obs_data_t ;


 int * obs_data_create () ;
 int obs_data_release (int *) ;
 int obs_data_set_bool (int *,char*,int) ;
 int obs_data_set_string (int *,char*,char const*) ;
 int * obs_source_create_private (char*,int *,int *) ;

__attribute__((used)) static obs_source_t *create_source_from_file(const char *file)
{
 obs_data_t *settings = obs_data_create();
 obs_source_t *source;

 obs_data_set_string(settings, "file", file);
 obs_data_set_bool(settings, "unload", 0);
 source = obs_source_create_private("image_source", ((void*)0), settings);

 obs_data_release(settings);
 return source;
}
