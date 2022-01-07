
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int json_decref (int *) ;
 int json_equal (int *,int *) ;
 int * json_loads (char const*,int ,int *) ;

__attribute__((used)) static void test_equal_complex()
{
    json_t *value1, *value2;

    const char *complex_json =
"{"
"    \"integer\": 1, "
"    \"real\": 3.141592, "
"    \"string\": \"foobar\", "
"    \"true\": true, "
"    \"object\": {"
"        \"array-in-object\": [1,true,\"foo\",{}],"
"        \"object-in-object\": {\"foo\": \"bar\"}"
"    },"
"    \"array\": [\"foo\", false, null, 1.234]"
"}";

    value1 = json_loads(complex_json, 0, ((void*)0));
    value2 = json_loads(complex_json, 0, ((void*)0));
    if(!value1 || !value2)
        fail("unable to parse JSON");
    if(!json_equal(value1, value2))
        fail("json_equal fails for two inequal strings");

    json_decref(value1);
    json_decref(value2);


}
