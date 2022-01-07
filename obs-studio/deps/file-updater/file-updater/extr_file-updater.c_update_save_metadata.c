
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_info {int etag_remote; int cache; } ;
struct dstr {int array; int member_0; } ;
typedef int obs_data_t ;


 int dstr_cat (struct dstr*,char*) ;
 int dstr_copy (struct dstr*,int ) ;
 int dstr_free (struct dstr*) ;
 int * obs_data_create () ;
 int obs_data_release (int *) ;
 int obs_data_save_json (int *,int ) ;
 int obs_data_set_string (int *,char*,int ) ;

__attribute__((used)) static void update_save_metadata(struct update_info *info)
{
 struct dstr path = {0};

 if (!info->etag_remote)
  return;

 dstr_copy(&path, info->cache);
 dstr_cat(&path, "meta.json");

 obs_data_t *data;
 data = obs_data_create();
 obs_data_set_string(data, "etag", info->etag_remote);
 obs_data_save_json(data, path.array);
 obs_data_release(data);

 dstr_free(&path);
}
