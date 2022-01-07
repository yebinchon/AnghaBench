
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tmsize_t ;


 void* calloc (size_t,size_t) ;

void* _TIFFcalloc(tmsize_t nmemb, tmsize_t siz)
{
    if( nmemb == 0 || siz == 0 )
        return ((void *) ((void*)0));

    return calloc((size_t) nmemb, (size_t)siz);
}
