
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__** array; } ;
struct TYPE_8__ {int rendering_filter; int filter_mutex; TYPE_1__ filters; } ;
typedef TYPE_2__ obs_source_t ;


 int obs_source_addref (TYPE_2__*) ;
 int obs_source_release (TYPE_2__*) ;
 int obs_source_video_render (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline void obs_source_render_filters(obs_source_t *source)
{
 obs_source_t *first_filter;

 pthread_mutex_lock(&source->filter_mutex);
 first_filter = source->filters.array[0];
 obs_source_addref(first_filter);
 pthread_mutex_unlock(&source->filter_mutex);

 source->rendering_filter = 1;
 obs_source_video_render(first_filter);
 source->rendering_filter = 0;

 obs_source_release(first_filter);
}
