
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int obs_register_source (int *) ;
 int xcomposite_load () ;
 int xshm_input ;

bool obs_module_load(void)
{
 obs_register_source(&xshm_input);
 xcomposite_load();
 return 1;
}
