
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ libvlc ;
 scalar_t__ libvlc_core_module ;
 scalar_t__ libvlc_module ;
 int libvlc_release_ (scalar_t__) ;
 int os_dlclose (scalar_t__) ;

void obs_module_unload(void)
{
 if (libvlc)
  libvlc_release_(libvlc);




 if (libvlc_module)
  os_dlclose(libvlc_module);
}
