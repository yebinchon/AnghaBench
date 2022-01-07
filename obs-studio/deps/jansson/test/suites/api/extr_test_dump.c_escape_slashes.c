
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int JSON_ESCAPE_SLASH ;
 int fail (char*) ;
 int free (char*) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int * json_object () ;
 int json_object_set_new (int *,char*,int ) ;
 int json_string (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void escape_slashes()
{


    json_t *json;
    char *result;

    json = json_object();
    json_object_set_new(json, "url", json_string("https://github.com/akheron/jansson"));

    result = json_dumps(json, 0);
    if(!result || strcmp(result, "{\"url\": \"https://github.com/akheron/jansson\"}"))
        fail("json_dumps failed to not escape slashes");

    free(result);

    result = json_dumps(json, JSON_ESCAPE_SLASH);
    if(!result || strcmp(result, "{\"url\": \"https:\\/\\/github.com\\/akheron\\/jansson\"}"))
        fail("json_dumps failed to escape slashes");

    free(result);
    json_decref(json);
}
