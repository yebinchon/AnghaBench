
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dstr_free (int *) ;
 int module_name ;
 int unload_twitch_data () ;
 int update_info ;
 int update_info_destroy (int ) ;

void obs_module_unload(void)
{
 update_info_destroy(update_info);
 unload_twitch_data();
 dstr_free(&module_name);
}
