
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int * ENGINE_get_first () ;
 int * ENGINE_get_next (int *) ;
 int ENGINE_register_RAND (int *) ;

void ENGINE_register_all_RAND(void)
{
    ENGINE *e;

    for (e = ENGINE_get_first(); e; e = ENGINE_get_next(e))
        ENGINE_register_RAND(e);
}
