
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int JSON_PRESERVE_ORDER ;
 int fail (char*) ;
 int fprintf (int ,char*,char const*,char*) ;
 int free (char*) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int json_integer (int) ;
 int * json_object () ;
 int json_object_del (int *,char*) ;
 int json_object_set_new (int *,char*,int ) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void test_preserve_order()
{
    json_t *object;
    char *result;

    const char *expected = "{\"foobar\": 1, \"bazquux\": 6, \"lorem ipsum\": 3, \"sit amet\": 5, \"helicopter\": 7}";

    object = json_object();

    json_object_set_new(object, "foobar", json_integer(1));
    json_object_set_new(object, "bazquux", json_integer(2));
    json_object_set_new(object, "lorem ipsum", json_integer(3));
    json_object_set_new(object, "dolor", json_integer(4));
    json_object_set_new(object, "sit amet", json_integer(5));


    json_object_set_new(object, "bazquux", json_integer(6));


    json_object_del(object, "dolor");


    json_object_set_new(object, "helicopter", json_integer(7));

    result = json_dumps(object, JSON_PRESERVE_ORDER);

    if(strcmp(expected, result) != 0) {
        fprintf(stderr, "%s != %s", expected, result);
        fail("JSON_PRESERVE_ORDER doesn't work");
    }

    free(result);
    json_decref(object);
}
