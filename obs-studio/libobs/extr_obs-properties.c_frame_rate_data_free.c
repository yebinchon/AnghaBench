
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_rate_data {int ranges; int extra_options; } ;


 int da_free (int ) ;
 int frame_rate_data_options_free (struct frame_rate_data*) ;
 int frame_rate_data_ranges_free (struct frame_rate_data*) ;

__attribute__((used)) static inline void frame_rate_data_free(struct frame_rate_data *data)
{
 frame_rate_data_options_free(data);
 frame_rate_data_ranges_free(data);

 da_free(data->extra_options);
 da_free(data->ranges);
}
