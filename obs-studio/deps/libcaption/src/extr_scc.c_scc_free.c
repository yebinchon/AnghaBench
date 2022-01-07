
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scc_t ;


 int free (int *) ;

scc_t* scc_free(scc_t* scc)
{
    free(scc);
    return ((void*)0);
}
