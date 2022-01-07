
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_remove (int *) ;
 int * engine_list_head ;

__attribute__((used)) static void engine_list_cleanup(void)
{
    ENGINE *iterator = engine_list_head;

    while (iterator != ((void*)0)) {
        ENGINE_remove(iterator);
        iterator = engine_list_head;
    }
    return;
}
