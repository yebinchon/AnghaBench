
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int blog (int ,char*) ;
 int load_libvlc_module () ;
 int load_vlc_funcs () ;
 int obs_register_source (int *) ;
 int vlc_source_info ;

bool obs_module_load(void)
{
 if (!load_libvlc_module()) {
  blog(LOG_INFO, "Couldn't find VLC installation, VLC video "
          "source disabled");
  return 1;
 }

 if (!load_vlc_funcs())
  return 1;

 blog(LOG_INFO, "VLC found, VLC video source enabled");

 obs_register_source(&vlc_source_info);
 return 1;
}
