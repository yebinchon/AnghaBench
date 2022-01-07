
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int line; int source; } ;
typedef TYPE_1__ json_error_t ;


 int fail (char*) ;
 int * json_load_file (char*,int ,TYPE_1__*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static void very_long_file_name() {
    json_t *json;
    json_error_t error;

    json = json_load_file("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", 0, &error);
    if(json)
        fail("json_load_file returned non-NULL for a nonexistent file");
    if(error.line != -1)
        fail("json_load_file returned an invalid line number");

    if (strncmp(error.source, "...aaa", 6) != 0)
        fail("error source was set incorrectly");
}
