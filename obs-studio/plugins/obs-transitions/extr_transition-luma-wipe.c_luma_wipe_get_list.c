
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct luma_wipe_info {int wipes_list; } ;


 int bfree (char*) ;
 int obs_data_create_from_json_file (char*) ;
 char* obs_module_file (char*) ;

__attribute__((used)) static void luma_wipe_get_list(void *data)
{
 struct luma_wipe_info *lwipe = data;

 char *path = obs_module_file("luma_wipes/wipes.json");

 lwipe->wipes_list = obs_data_create_from_json_file(path);

 bfree(path);
}
