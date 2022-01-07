
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_2__** array; scalar_t__ num; } ;
struct TYPE_6__ {int filter_mutex; TYPE_1__ filters; } ;
typedef TYPE_2__ obs_source_t ;


 int get_base_width (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static uint32_t get_recurse_width(obs_source_t *source)
{
 uint32_t width;

 pthread_mutex_lock(&source->filter_mutex);

 width = (source->filters.num) ? get_base_width(source->filters.array[0])
          : get_base_width(source);

 pthread_mutex_unlock(&source->filter_mutex);

 return width;
}
