
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_diffusion_kernel {scalar_t__ name; } ;


 struct error_diffusion_kernel* mp_error_diffusion_kernels ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

const struct error_diffusion_kernel *mp_find_error_diffusion_kernel(const char *name)
{
    if (!name)
        return ((void*)0);
    for (const struct error_diffusion_kernel *k = mp_error_diffusion_kernels;
         k->name;
         k++) {
        if (strcmp(k->name, name) == 0)
            return k;
    }
    return ((void*)0);
}
