
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_free (int *) ;
 int * ENGINE_get_first () ;
 int ENGINE_get_id (int *) ;
 int ENGINE_get_name (int *) ;
 int * ENGINE_get_next (int *) ;
 int TEST_info (char*,int ,int ,int ) ;

__attribute__((used)) static void display_engine_list(void)
{
    ENGINE *h;
    int loop;

    loop = 0;
    for (h = ENGINE_get_first(); h != ((void*)0); h = ENGINE_get_next(h)) {
        TEST_info("#%d: id = \"%s\", name = \"%s\"",
               loop++, ENGINE_get_id(h), ENGINE_get_name(h));
    }





    ENGINE_free(h);
}
