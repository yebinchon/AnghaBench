
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* json; } ;
typedef TYPE_1__ obs_data_t ;
typedef int json_t ;


 int JSON_INDENT (int) ;
 int JSON_PRESERVE_ORDER ;
 int free (char const*) ;
 int json_decref (int *) ;
 char const* json_dumps (int *,int) ;
 int * obs_data_to_json (TYPE_1__*) ;

const char *obs_data_get_json(obs_data_t *data)
{
 if (!data)
  return ((void*)0);


 free(data->json);
 data->json = ((void*)0);

 json_t *root = obs_data_to_json(data);
 data->json = json_dumps(root, JSON_PRESERVE_ORDER | JSON_INDENT(4));
 json_decref(root);

 return data->json;
}
