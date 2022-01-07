
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {int * url; TYPE_1__* container_vtbl; } ;
struct TYPE_5__ {int (* set_url ) (TYPE_2__*,int *) ;} ;
typedef int HRESULT ;
typedef TYPE_2__ DocHost ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int heap_free (int *) ;
 int * heap_strdupW (int const*) ;
 int stub1 (TYPE_2__*,int *) ;

HRESULT set_dochost_url(DocHost *This, const WCHAR *url)
{
    WCHAR *new_url;

    if(url) {
        new_url = heap_strdupW(url);
        if(!new_url)
            return E_OUTOFMEMORY;
    }else {
        new_url = ((void*)0);
    }

    heap_free(This->url);
    This->url = new_url;

    This->container_vtbl->set_url(This, This->url);
    return S_OK;
}
