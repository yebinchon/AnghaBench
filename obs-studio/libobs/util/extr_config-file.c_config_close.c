
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct config_section {int dummy; } ;
struct TYPE_6__ {size_t num; struct config_section* array; } ;
struct TYPE_5__ {int mutex; struct TYPE_5__* file; TYPE_2__ sections; TYPE_2__ defaults; } ;
typedef TYPE_1__ config_t ;


 int bfree (TYPE_1__*) ;
 int config_section_free (struct config_section*) ;
 int darray_free (TYPE_2__*) ;
 int pthread_mutex_destroy (int *) ;

void config_close(config_t *config)
{
 struct config_section *defaults, *sections;
 size_t i;

 if (!config)
  return;

 defaults = config->defaults.array;
 sections = config->sections.array;

 for (i = 0; i < config->defaults.num; i++)
  config_section_free(defaults + i);
 for (i = 0; i < config->sections.num; i++)
  config_section_free(sections + i);

 darray_free(&config->defaults);
 darray_free(&config->sections);
 bfree(config->file);
 pthread_mutex_destroy(&config->mutex);
 bfree(config);
}
