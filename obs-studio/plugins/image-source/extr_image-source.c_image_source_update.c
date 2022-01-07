
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_source {int persistent; int source; int file; } ;
typedef int obs_data_t ;


 int bfree (int ) ;
 int bstrdup (char const*) ;
 int image_source_load (void*) ;
 int image_source_unload (void*) ;
 int obs_data_get_bool (int *,char*) ;
 char* obs_data_get_string (int *,char*) ;
 scalar_t__ obs_source_showing (int ) ;

__attribute__((used)) static void image_source_update(void *data, obs_data_t *settings)
{
 struct image_source *context = data;
 const char *file = obs_data_get_string(settings, "file");
 const bool unload = obs_data_get_bool(settings, "unload");

 if (context->file)
  bfree(context->file);
 context->file = bstrdup(file);
 context->persistent = !unload;


 if (context->persistent || obs_source_showing(context->source))
  image_source_load(data);
 else
  image_source_unload(data);
}
