
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int position; } ;
typedef TYPE_1__ json_error_t ;


 size_t JSON_DISABLE_EOF_CHECK ;
 int fail (char*) ;
 int json_decref (int *) ;
 int * json_loads (char*,size_t,TYPE_1__*) ;

__attribute__((used)) static void position()
{
    json_t *json;
    size_t flags = JSON_DISABLE_EOF_CHECK;
    json_error_t error;

    json = json_loads("{\"foo\": \"bar\"}", 0, &error);
    if(error.position != 14)
        fail("json_loads returned a wrong position");
    json_decref(json);

    json = json_loads("{\"foo\": \"bar\"} baz quux", flags, &error);
    if(error.position != 14)
        fail("json_loads returned a wrong position");
    json_decref(json);
}
