
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {struct obs_audio_data* (* filter_audio ) (scalar_t__,struct obs_audio_data*) ;} ;
struct obs_source {TYPE_2__ context; TYPE_1__ info; int enabled; } ;
struct obs_audio_data {int dummy; } ;
struct TYPE_8__ {size_t num; struct obs_source** array; } ;
struct TYPE_9__ {TYPE_3__ filters; } ;
typedef TYPE_4__ obs_source_t ;


 struct obs_audio_data* stub1 (scalar_t__,struct obs_audio_data*) ;

__attribute__((used)) static inline struct obs_audio_data *
filter_async_audio(obs_source_t *source, struct obs_audio_data *in)
{
 size_t i;
 for (i = source->filters.num; i > 0; i--) {
  struct obs_source *filter = source->filters.array[i - 1];

  if (!filter->enabled)
   continue;

  if (filter->context.data && filter->info.filter_audio) {
   in = filter->info.filter_audio(filter->context.data,
             in);
   if (!in)
    return ((void*)0);
  }
 }

 return in;
}
