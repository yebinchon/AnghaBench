
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int JSON_ENCODE_ANY ;
 int fail (char*) ;
 int free (char*) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int * json_stringn (char*,int) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void encode_nul_byte()
{
    json_t *json;
    char *result;

    json = json_stringn("nul byte \0 in string", 20);
    result = json_dumps(json, JSON_ENCODE_ANY);
    if(!result || memcmp(result, "\"nul byte \\u0000 in string\"", 27))
        fail("json_dumps failed to dump an embedded NUL byte");

    free(result);
    json_decref(json);
}
