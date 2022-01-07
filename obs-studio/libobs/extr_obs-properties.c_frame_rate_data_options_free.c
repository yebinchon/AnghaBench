
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_rate_option {int description; int name; } ;
struct TYPE_2__ {size_t num; struct frame_rate_option* array; } ;
struct frame_rate_data {TYPE_1__ extra_options; } ;


 int bfree (int ) ;
 int da_resize (TYPE_1__,int ) ;

__attribute__((used)) static inline void frame_rate_data_options_free(struct frame_rate_data *data)
{
 for (size_t i = 0; i < data->extra_options.num; i++) {
  struct frame_rate_option *opt = &data->extra_options.array[i];
  bfree(opt->name);
  bfree(opt->description);
 }

 da_resize(data->extra_options, 0);
}
