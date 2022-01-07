
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 scalar_t__ json_array_get (int *,size_t) ;
 size_t json_array_size (int *) ;
 int json_decref (int *) ;
 int * json_deep_copy (int *) ;
 int json_equal (int *,int *) ;
 int * json_loads (char const*,int ,int *) ;

__attribute__((used)) static void test_deep_copy_array(void)
{
    const char *json_array_text = "[1, \"foo\", 3.141592, {\"foo\": \"bar\"}]";

    json_t *array, *copy;
    size_t i;

    array = json_loads(json_array_text, 0, ((void*)0));
    if(!array)
        fail("unable to parse an array");

    copy = json_deep_copy(array);
    if(!copy)
        fail("unable to deep copy an array");
    if(copy == array)
        fail("deep copying an array doesn't copy");
    if(!json_equal(copy, array))
        fail("deep copying an array produces an inequal copy");

    for(i = 0; i < json_array_size(copy); i++)
    {
        if(json_array_get(array, i) == json_array_get(copy, i))
            fail("deep copying an array doesn't copy its elements");
    }

    json_decref(array);
    json_decref(copy);
}
