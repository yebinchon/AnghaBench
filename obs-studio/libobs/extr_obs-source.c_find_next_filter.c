
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int output_flags; } ;
struct TYPE_7__ {int num; TYPE_3__** array; } ;
struct TYPE_8__ {TYPE_1__ info; TYPE_2__ filters; } ;
typedef TYPE_3__ obs_source_t ;


 size_t DARRAY_INVALID ;
 int OBS_SOURCE_ASYNC ;

__attribute__((used)) static size_t find_next_filter(obs_source_t *source, obs_source_t *filter,
          size_t cur_idx)
{
 bool curAsync = (filter->info.output_flags & OBS_SOURCE_ASYNC) != 0;
 bool nextAsync;
 obs_source_t *next;

 if (cur_idx == source->filters.num - 1)
  return DARRAY_INVALID;

 next = source->filters.array[cur_idx + 1];
 nextAsync = (next->info.output_flags & OBS_SOURCE_ASYNC);

 if (nextAsync == curAsync)
  return cur_idx + 1;
 else
  return find_next_filter(source, filter, cur_idx + 1);
}
