
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int json_error_t ;


 int JSON_DISABLE_EOF_CHECK ;
 int check_error (char*,char*,int,int,int) ;
 int fail (char*) ;
 int json_decref (int *) ;
 int * json_loads (char const*,int ,int *) ;

__attribute__((used)) static void disable_eof_check()
{
    json_error_t error;
    json_t *json;

    const char *text = "{\"foo\": 1} garbage";

    if(json_loads(text, 0, &error))
        fail("json_loads did not detect garbage after JSON text");
    check_error("end of file expected near 'garbage'", "<string>", 1, 18, 18);

    json = json_loads(text, JSON_DISABLE_EOF_CHECK, &error);
    if(!json)
        fail("json_loads failed with JSON_DISABLE_EOF_CHECK");

    json_decref(json);
}
