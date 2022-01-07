
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_free (void*) ;
 int stub1 (void*) ;

void jsonp_free(void *ptr)
{
    if(!ptr)
        return;

    (*do_free)(ptr);
}
