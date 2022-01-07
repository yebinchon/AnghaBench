
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_diffusion_kernel {int dummy; } ;


 int EF_MAX_DELTA_Y ;
 int compute_rightmost_shifted_column (struct error_diffusion_kernel const*) ;

int mp_ef_compute_shared_memory_size(const struct error_diffusion_kernel *k,
                                     int height)
{


    int rows = height + EF_MAX_DELTA_Y;
    int shifted_columns = compute_rightmost_shifted_column(k) + 1;



    return rows * shifted_columns * 4;
}
