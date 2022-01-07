
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int proc_handler_t ;
struct TYPE_4__ {int array; } ;


 int RTMP_SERVICES_LOG_STR ;
 int RTMP_SERVICES_URL ;
 int bfree (char*) ;
 int confirm_service_file ;
 int dstr_cat (TYPE_1__*,char*) ;
 int dstr_copy (TYPE_1__*,char*) ;
 int init_twitch_data () ;
 int load_twitch_data () ;
 TYPE_1__ module_name ;
 int * obs_get_proc_handler () ;
 char* obs_get_version_string () ;
 char* obs_module_config_path (char*) ;
 char* obs_module_file (char*) ;
 int obs_register_service (int *) ;
 int proc_handler_add (int *,char*,int ,int *) ;
 int refresh_callback ;
 int rtmp_common_service ;
 int rtmp_custom_service ;
 int update_info ;
 int update_info_create (int ,int ,int ,char*,char*,int ,int *) ;

bool obs_module_load(void)
{
 init_twitch_data();

 dstr_copy(&module_name, "rtmp-services plugin (libobs ");
 dstr_cat(&module_name, obs_get_version_string());
 dstr_cat(&module_name, ")");

 proc_handler_t *ph = obs_get_proc_handler();
 proc_handler_add(ph, "void twitch_ingests_refresh(int seconds)",
    refresh_callback, ((void*)0));


 char *local_dir = obs_module_file("");
 char *cache_dir = obs_module_config_path("");

 if (cache_dir) {
  update_info = update_info_create(RTMP_SERVICES_LOG_STR,
       module_name.array,
       RTMP_SERVICES_URL, local_dir,
       cache_dir,
       confirm_service_file, ((void*)0));
 }

 load_twitch_data();

 bfree(local_dir);
 bfree(cache_dir);


 obs_register_service(&rtmp_common_service);
 obs_register_service(&rtmp_custom_service);
 return 1;
}
