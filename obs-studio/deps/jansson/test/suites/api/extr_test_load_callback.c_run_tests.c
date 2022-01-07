
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct my_source {void* buf; void* cap; scalar_t__ off; } ;
typedef int json_t ;
struct TYPE_3__ {int text; int source; } ;
typedef TYPE_1__ json_error_t ;


 int fail (char*) ;
 int * greedy_reader ;
 int json_decref (int *) ;
 int * json_load_callback (int *,struct my_source*,int ,TYPE_1__*) ;
 void* my_str ;
 scalar_t__ strcmp (int ,char*) ;
 void* strlen (void*) ;

__attribute__((used)) static void run_tests()
{
    struct my_source s;
    json_t *json;
    json_error_t error;

    s.off = 0;
    s.cap = strlen(my_str);
    s.buf = my_str;

    json = json_load_callback(greedy_reader, &s, 0, &error);

    if (!json)
        fail("json_load_callback failed on a valid callback");
    json_decref(json);

    s.off = 0;
    s.cap = strlen(my_str) - 1;
    s.buf = my_str;

    json = json_load_callback(greedy_reader, &s, 0, &error);
    if (json) {
        json_decref(json);
        fail("json_load_callback should have failed on an incomplete stream, but it didn't");
    }
    if (strcmp(error.source, "<callback>") != 0) {
        fail("json_load_callback returned an invalid error source");
    }
    if (strcmp(error.text, "']' expected near end of file") != 0) {
        fail("json_load_callback returned an invalid error message for an unclosed top-level array");
    }

    json = json_load_callback(((void*)0), ((void*)0), 0, &error);
    if (json) {
        json_decref(json);
        fail("json_load_callback should have failed on NULL load callback, but it didn't");
    }
    if (strcmp(error.text, "wrong arguments") != 0) {
        fail("json_load_callback returned an invalid error message for a NULL load callback");
    }
}
