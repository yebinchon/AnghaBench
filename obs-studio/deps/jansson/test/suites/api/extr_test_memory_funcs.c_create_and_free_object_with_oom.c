
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int json_decref (int *) ;
 int json_integer (int) ;
 int * json_object () ;
 int json_object_set_new (int *,char*,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void create_and_free_object_with_oom()
{
    int i;
    char key[4];
    json_t *obj = json_object();

    for (i = 0; i < 10; i++)
    {
        snprintf(key, sizeof key, "%d", i);
        json_object_set_new(obj, key, json_integer(i));
    }

    json_decref(obj);
}
