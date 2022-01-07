
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_rate_data {int ranges; } ;


 int da_resize (int ,int ) ;

__attribute__((used)) static inline void frame_rate_data_ranges_free(struct frame_rate_data *data)
{
 da_resize(data->ranges, 0);
}
