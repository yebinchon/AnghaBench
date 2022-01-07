
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_output_t ;


 int obs_output_end_data_capture_internal (int *,int) ;

void obs_output_end_data_capture(obs_output_t *output)
{
 obs_output_end_data_capture_internal(output, 1);
}
