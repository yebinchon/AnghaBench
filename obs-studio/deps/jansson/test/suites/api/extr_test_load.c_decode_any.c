
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int json_error_t ;


 int JSON_DECODE_ANY ;
 int fail (char*) ;
 int json_decref (int *) ;
 int json_is_integer (int *) ;
 int json_is_null (int *) ;
 int json_is_string (int *) ;
 int json_is_true (int *) ;
 int * json_loads (char*,int ,int *) ;

__attribute__((used)) static void decode_any()
{
    json_t *json;
    json_error_t error;

    json = json_loads("\"foo\"", JSON_DECODE_ANY, &error);
    if (!json || !json_is_string(json))
        fail("json_load decoded any failed - string");
    json_decref(json);

    json = json_loads("42", JSON_DECODE_ANY, &error);
    if (!json || !json_is_integer(json))
        fail("json_load decoded any failed - integer");
    json_decref(json);

    json = json_loads("true", JSON_DECODE_ANY, &error);
    if (!json || !json_is_true(json))
        fail("json_load decoded any failed - boolean");
    json_decref(json);

    json = json_loads("null", JSON_DECODE_ANY, &error);
    if (!json || !json_is_null(json))
        fail("json_load decoded any failed - null");
    json_decref(json);
}
