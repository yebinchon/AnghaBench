
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int json_decref (int *) ;
 int json_dump_file (int *,char*,int ) ;
 int * json_object () ;
 int remove (char*) ;

__attribute__((used)) static void dump_file()
{
    json_t *json;
    int result;

    result = json_dump_file(((void*)0), "", 0);
    if (result != -1)
        fail("json_dump_file succeeded with invalid args");

    json = json_object();
    result = json_dump_file(json, "json_dump_file.json", 0);
    if (result != 0)
        fail("json_dump_file failed");

    json_decref(json);
    remove("json_dump_file.json");
}
