
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dstr {int member_0; } ;
struct TYPE_4__ {size_t num; int * array; } ;
struct TYPE_5__ {TYPE_1__ roots; } ;
typedef TYPE_2__ profiler_snapshot_t ;
typedef int (* dump_csv_func ) (void*,struct dstr*) ;


 int dstr_free (struct dstr*) ;
 int dstr_init_copy (struct dstr*,char*) ;
 int entry_dump_csv (struct dstr*,int *,int *,int (*) (void*,struct dstr*),void*) ;

__attribute__((used)) static void profiler_snapshot_dump(const profiler_snapshot_t *snap,
       dump_csv_func func, void *data)
{
 struct dstr buffer = {0};

 dstr_init_copy(&buffer, "id,parent_id,name_id,parent_name_id,name,"
    "time_between_calls,time_delta_µs,count\n");
 func(data, &buffer);

 for (size_t i = 0; i < snap->roots.num; i++)
  entry_dump_csv(&buffer, ((void*)0), &snap->roots.array[i], func,
          data);

 dstr_free(&buffer);
}
