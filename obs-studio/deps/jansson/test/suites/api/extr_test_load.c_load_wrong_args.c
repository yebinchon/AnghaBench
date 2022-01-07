
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int json_error_t ;


 int fail (char*) ;
 int * json_load_file (int *,int ,int *) ;
 int * json_loadb (int *,int ,int ,int *) ;
 int * json_loadf (int *,int ,int *) ;
 int * json_loads (int *,int ,int *) ;

__attribute__((used)) static void load_wrong_args()
{
    json_t *json;
    json_error_t error;

    json = json_loads(((void*)0), 0, &error);
    if (json)
        fail("json_loads should return NULL if the first argument is NULL");

    json = json_loadb(((void*)0), 0, 0, &error);
    if (json)
        fail("json_loadb should return NULL if the first argument is NULL");

    json = json_loadf(((void*)0), 0, &error);
    if (json)
        fail("json_loadf should return NULL if the first argument is NULL");

    json = json_load_file(((void*)0), 0, &error);
    if (json)
        fail("json_loadf should return NULL if the first argument is NULL");
}
