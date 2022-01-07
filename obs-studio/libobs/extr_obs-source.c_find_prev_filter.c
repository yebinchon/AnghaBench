
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int output_flags; } ;
struct TYPE_6__ {TYPE_3__** array; } ;
struct TYPE_8__ {TYPE_2__ info; TYPE_1__ filters; } ;
typedef TYPE_3__ obs_source_t ;


 size_t DARRAY_INVALID ;
 int OBS_SOURCE_ASYNC ;

__attribute__((used)) static size_t find_prev_filter(obs_source_t *source, obs_source_t *filter,
          size_t cur_idx)
{
 bool curAsync = (filter->info.output_flags & OBS_SOURCE_ASYNC) != 0;
 bool prevAsync;
 obs_source_t *prev;

 if (cur_idx == 0)
  return DARRAY_INVALID;

 prev = source->filters.array[cur_idx - 1];
 prevAsync = (prev->info.output_flags & OBS_SOURCE_ASYNC);

 if (prevAsync == curAsync)
  return cur_idx - 1;
 else
  return find_prev_filter(source, filter, cur_idx - 1);
}
