
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int line; int text; } ;
typedef TYPE_1__ json_error_t ;


 int fail (char*) ;
 int * json_load_file (char*,int ,TYPE_1__*) ;
 char* strchr (int ,char) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void file_not_found()
{
    json_t *json;
    json_error_t error;
    char *pos;

    json = json_load_file("/path/to/nonexistent/file.json", 0, &error);
    if(json)
        fail("json_load_file returned non-NULL for a nonexistent file");
    if(error.line != -1)
        fail("json_load_file returned an invalid line number");




    pos = strchr(error.text, ':');
    if(!pos)
        fail("json_load_file returne an invalid error message");

    *pos = '\0';

    if(strcmp(error.text, "unable to open /path/to/nonexistent/file.json") != 0)
        fail("json_load_file returned an invalid error message");
}
