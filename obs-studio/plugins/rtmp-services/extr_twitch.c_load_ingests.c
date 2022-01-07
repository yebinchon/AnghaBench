
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ingest {int url; int name; int member_0; } ;
struct dstr {int array; int member_0; } ;
typedef int json_t ;
struct TYPE_3__ {scalar_t__ num; } ;


 int bfree (char*) ;
 int bstrdup (char const*) ;
 TYPE_1__ cur_ingests ;
 int da_push_back (TYPE_1__,struct ingest*) ;
 int dstr_copy (struct dstr*,char const*) ;
 int dstr_replace (struct dstr*,char*,char*) ;
 int free_ingests () ;
 int * json_array_get (int *,size_t) ;
 size_t json_array_size (int *) ;
 int json_decref (int *) ;
 int * json_loads (char const*,int ,int *) ;
 int * json_object_get (int *,char*) ;
 char* json_string_value (int *) ;
 char* obs_module_config_path (char*) ;
 int os_quick_write_utf8_file (char*,char const*,int ,int) ;
 int os_safe_replace (char*,char*,int *) ;
 int strlen (char const*) ;
 int * strstr (char const*,char*) ;

__attribute__((used)) static bool load_ingests(const char *json, bool write_file)
{
 json_t *root;
 json_t *ingests;
 bool success = 0;
 char *cache_old;
 char *cache_new;
 size_t count;

 root = json_loads(json, 0, ((void*)0));
 if (!root)
  goto finish;

 ingests = json_object_get(root, "ingests");
 if (!ingests)
  goto finish;

 count = json_array_size(ingests);
 if (count <= 1 && cur_ingests.num)
  goto finish;

 free_ingests();

 for (size_t i = 0; i < count; i++) {
  json_t *item = json_array_get(ingests, i);
  json_t *item_name = json_object_get(item, "name");
  json_t *item_url = json_object_get(item, "url_template");
  struct ingest ingest = {0};
  struct dstr url = {0};

  if (!item_name || !item_url)
   continue;

  const char *url_str = json_string_value(item_url);
  const char *name_str = json_string_value(item_name);



  if (strstr(name_str, "deprecated") != ((void*)0) ||
      strstr(name_str, "depracated") != ((void*)0))
   continue;

  dstr_copy(&url, url_str);
  dstr_replace(&url, "/{stream_key}", "");

  ingest.name = bstrdup(name_str);
  ingest.url = url.array;

  da_push_back(cur_ingests, &ingest);
 }

 if (!cur_ingests.num)
  goto finish;

 success = 1;

 if (!write_file)
  goto finish;

 cache_old = obs_module_config_path("twitch_ingests.json");
 cache_new = obs_module_config_path("twitch_ingests.new.json");

 os_quick_write_utf8_file(cache_new, json, strlen(json), 0);
 os_safe_replace(cache_old, cache_new, ((void*)0));

 bfree(cache_old);
 bfree(cache_new);

finish:
 if (root)
  json_decref(root);
 return success;
}
