
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_free (int *) ;

void release_engine(ENGINE *e)
{

    if (e != ((void*)0))

        ENGINE_free(e);

}
