
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int JSON_ALLOW_NUL ;
 int JSON_DECODE_ANY ;
 int fail (char*) ;
 int json_decref (int *) ;
 int json_is_string (int *) ;
 int * json_loads (char const*,int,int *) ;
 size_t json_string_length (int *) ;
 int json_string_value (int *) ;
 scalar_t__ memcmp (int ,char const*,size_t) ;

__attribute__((used)) static void allow_nul()
{
    const char *text = "\"nul byte \\u0000 in string\"";
    const char *expected = "nul byte \0 in string";
    size_t len = 20;
    json_t *json;

    json = json_loads(text, JSON_ALLOW_NUL | JSON_DECODE_ANY, ((void*)0));
    if(!json || !json_is_string(json))
        fail("unable to decode embedded NUL byte");

    if(json_string_length(json) != len)
        fail("decoder returned wrong string length");

    if(memcmp(json_string_value(json), expected, len + 1))
        fail("decoder returned wrong string content");

    json_decref(json);
}
