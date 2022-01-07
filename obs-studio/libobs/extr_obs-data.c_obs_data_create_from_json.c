
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_data_t ;
typedef int json_t ;
struct TYPE_3__ {int text; int line; } ;
typedef TYPE_1__ json_error_t ;


 int JSON_REJECT_DUPLICATES ;
 int LOG_ERROR ;
 int blog (int ,char*,int ,int ) ;
 int json_decref (int *) ;
 int * json_loads (char const*,int ,TYPE_1__*) ;
 int obs_data_add_json_object_data (int *,int *) ;
 int * obs_data_create () ;
 int obs_data_release (int *) ;

obs_data_t *obs_data_create_from_json(const char *json_string)
{
 obs_data_t *data = obs_data_create();

 json_error_t error;
 json_t *root = json_loads(json_string, JSON_REJECT_DUPLICATES, &error);

 if (root) {
  obs_data_add_json_object_data(data, root);
  json_decref(root);
 } else {
  blog(LOG_ERROR,
       "obs-data.c: [obs_data_create_from_json] "
       "Failed reading json string (%d): %s",
       error.line, error.text);
  obs_data_release(data);
  data = ((void*)0);
 }

 return data;
}
