
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;


 int active_bus_type ;
 int bcma_driver_unregister (int *) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int ssb_driver_unregister (int *) ;
 scalar_t__ wl_glue_attached ;
 int wl_glue_bcma_driver ;
 int wl_glue_ssb_driver ;

int wl_glue_unregister(void)
{
 int err;

 if (!wl_glue_attached)
  return -ENOSYS;

 switch (active_bus_type)
 {
 default:
  pr_err("Not removing glue driver due to unsupported bus\n");
  err = -ENOSYS;
  break;
 }

 if (!err)
 {
  pr_info("SSB/BCMA glue driver successfully detached\n");
  wl_glue_attached = 0;
 }

 return err;
}
