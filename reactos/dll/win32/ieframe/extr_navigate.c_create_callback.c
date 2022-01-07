
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_13__ {int ref; int * post_data; int * binding; TYPE_4__* doc_host; int * headers; int post_data_len; int * url; TYPE_3__ IHttpSecurity_iface; TYPE_2__ IHttpNegotiate_iface; TYPE_1__ IBindStatusCallback_iface; } ;
struct TYPE_12__ {int IOleClientSite_iface; } ;
typedef int PBYTE ;
typedef scalar_t__ LPCWSTR ;
typedef TYPE_4__ DocHost ;
typedef TYPE_5__ BindStatusCallback ;


 int BindStatusCallbackVtbl ;
 int * GlobalAlloc (int ,int ) ;
 int HttpNegotiateVtbl ;
 int HttpSecurityVtbl ;
 int IOleClientSite_AddRef (int *) ;
 int * SysAllocString (scalar_t__) ;
 TYPE_5__* heap_alloc (int) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static BindStatusCallback *create_callback(DocHost *doc_host, LPCWSTR url, PBYTE post_data,
        ULONG post_data_len, LPCWSTR headers)
{
    BindStatusCallback *ret = heap_alloc(sizeof(BindStatusCallback));

    ret->IBindStatusCallback_iface.lpVtbl = &BindStatusCallbackVtbl;
    ret->IHttpNegotiate_iface.lpVtbl = &HttpNegotiateVtbl;
    ret->IHttpSecurity_iface.lpVtbl = &HttpSecurityVtbl;

    ret->ref = 1;
    ret->url = SysAllocString(url);
    ret->post_data = ((void*)0);
    ret->post_data_len = post_data_len;
    ret->headers = headers ? SysAllocString(headers) : ((void*)0);

    ret->doc_host = doc_host;
    IOleClientSite_AddRef(&doc_host->IOleClientSite_iface);

    ret->binding = ((void*)0);

    if(post_data) {
        ret->post_data = GlobalAlloc(0, post_data_len);
        memcpy(ret->post_data, post_data, post_data_len);
    }

    return ret;
}
