
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int free (char*) ;
 int * json_array () ;
 int json_array_append_new (int *,int ) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int json_integer (int) ;
 int * json_object () ;
 int json_object_set_new (int *,char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void encode_twice()
{


    json_t *json;
    char *result;

    json = json_object();
    result = json_dumps(json, 0);
    if(!result || strcmp(result, "{}"))
      fail("json_dumps failed");
    free(result);

    json_object_set_new(json, "foo", json_integer(5));
    result = json_dumps(json, 0);
    if(!result || strcmp(result, "{\"foo\": 5}"))
      fail("json_dumps failed");
    free(result);

    json_decref(json);

    json = json_array();
    result = json_dumps(json, 0);
    if(!result || strcmp(result, "[]"))
      fail("json_dumps failed");
    free(result);

    json_array_append_new(json, json_integer(5));
    result = json_dumps(json, 0);
    if(!result || strcmp(result, "[5]"))
      fail("json_dumps failed");
    free(result);

    json_decref(json);
}
