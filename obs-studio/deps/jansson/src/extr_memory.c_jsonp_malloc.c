
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* do_malloc (size_t) ;
 void* stub1 (size_t) ;

void *jsonp_malloc(size_t size)
{
    if(!size)
        return ((void*)0);

    return (*do_malloc)(size);
}
