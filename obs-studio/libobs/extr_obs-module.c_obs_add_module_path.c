
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_module_path {void* data; void* bin; } ;
struct TYPE_2__ {int module_paths; } ;


 void* bstrdup (char const*) ;
 int da_push_back (int ,struct obs_module_path*) ;
 TYPE_1__* obs ;

void obs_add_module_path(const char *bin, const char *data)
{
 struct obs_module_path omp;

 if (!obs || !bin || !data)
  return;

 omp.bin = bstrdup(bin);
 omp.data = bstrdup(data);
 da_push_back(obs->module_paths, &omp);
}
