
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpu_delay_filter_data {int dummy; } ;


 int bfree (struct gpu_delay_filter_data*) ;
 int free_textures (struct gpu_delay_filter_data*) ;

__attribute__((used)) static void gpu_delay_filter_destroy(void *data)
{
 struct gpu_delay_filter_data *f = data;

 free_textures(f);
 bfree(f);
}
