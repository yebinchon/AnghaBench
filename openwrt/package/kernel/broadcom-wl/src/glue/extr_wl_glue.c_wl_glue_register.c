
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;


 int active_bus_type ;
 int bcma_driver_register (int *) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int ssb_driver_register (int *) ;
 int wl_glue_attached ;
 int wl_glue_bcma_driver ;
 int wl_glue_ssb_driver ;

int wl_glue_register(void)
{
 int err;

 switch(active_bus_type)
 {
 default:
  pr_err("Not attaching through glue driver due to unsupported bus\n");
  err = -ENOSYS;
  break;
 }

 if (!err)
 {
  pr_info("SSB/BCMA glue driver successfully attached\n");
  wl_glue_attached = 1;
 }

 return err;
}
