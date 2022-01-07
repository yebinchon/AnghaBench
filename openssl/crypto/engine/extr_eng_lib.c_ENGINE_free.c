
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int engine_free_util (int *,int) ;

int ENGINE_free(ENGINE *e)
{
    return engine_free_util(e, 1);
}
