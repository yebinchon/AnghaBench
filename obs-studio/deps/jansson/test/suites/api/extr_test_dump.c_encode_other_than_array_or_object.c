
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int FILE ;


 int JSON_ENCODE_ANY ;
 int fail (char*) ;
 int free (char*) ;
 int json_decref (int *) ;
 scalar_t__ json_dumpf (int *,int *,int ) ;
 char* json_dumps (int *,int ) ;
 int * json_integer (int) ;
 int * json_string (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void encode_other_than_array_or_object()
{



    json_t *json;
    FILE *fp = ((void*)0);
    char *result;

    json = json_string("foo");
    if(json_dumps(json, 0) != ((void*)0))
        fail("json_dumps encoded a string!");
    if(json_dumpf(json, fp, 0) == 0)
        fail("json_dumpf encoded a string!");

    result = json_dumps(json, JSON_ENCODE_ANY);
    if(!result || strcmp(result, "\"foo\"") != 0)
        fail("json_dumps failed to encode a string with JSON_ENCODE_ANY");

    free(result);
    json_decref(json);

    json = json_integer(42);
    if(json_dumps(json, 0) != ((void*)0))
        fail("json_dumps encoded an integer!");
    if(json_dumpf(json, fp, 0) == 0)
        fail("json_dumpf encoded an integer!");

    result = json_dumps(json, JSON_ENCODE_ANY);
    if(!result || strcmp(result, "42") != 0)
        fail("json_dumps failed to encode an integer with JSON_ENCODE_ANY");

    free(result);
    json_decref(json);


}
