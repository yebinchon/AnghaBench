
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRDSET ;
typedef int RRDHOST ;


 int printf (char*) ;

RRDSET *__wrap_rrdset_find_byname(RRDHOST *host, const char *name)
{
    printf("FIXME: rrdset_find_byname\n");
    return ((void*)0);
}
