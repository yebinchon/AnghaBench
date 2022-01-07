
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int bindinfo ;
typedef int WCHAR ;
typedef scalar_t__ ULONG ;
struct TYPE_16__ {int * hGlobal; } ;
struct TYPE_17__ {TYPE_1__ u; } ;
struct TYPE_20__ {int cbSize; scalar_t__ dwBindVerb; TYPE_2__ stgmedData; scalar_t__ cbstgmedData; } ;
struct TYPE_19__ {int IBindStatusCallback_iface; } ;
struct TYPE_18__ {scalar_t__ doc_navigate; } ;
typedef int * PBYTE ;
typedef int * LPWSTR ;
typedef int IMoniker ;
typedef int IHttpNegotiate ;
typedef int IBindStatusCallback ;
typedef int IBindCtx ;
typedef int HRESULT ;
typedef TYPE_3__ DocHost ;
typedef int DWORD ;
typedef TYPE_4__ BindStatusCallback ;
typedef TYPE_5__ BINDINFO ;


 scalar_t__ BINDVERB_POST ;
 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FIXME (char*,int ) ;
 int IBindStatusCallback_GetBindInfo (int *,int *,TYPE_5__*) ;
 int IBindStatusCallback_QueryInterface (int *,int *,void**) ;
 int IBindStatusCallback_Release (int *) ;
 int IHttpNegotiate_BeginningTransaction (int *,int const*,int const*,int ,int **) ;
 int IHttpNegotiate_Release (int *) ;
 int IID_IHttpNegotiate ;
 int IMoniker_GetDisplayName (int *,int ,int *,int **) ;
 int ReleaseBindInfo (TYPE_5__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*) ;
 int async_doc_navigate (TYPE_3__*,int *,int *,int *,scalar_t__,int ) ;
 TYPE_4__* create_callback (TYPE_3__*,int *,int *,scalar_t__,int *) ;
 int dump_BINDINFO (TYPE_5__*) ;
 int memset (TYPE_5__*,int ,int) ;
 int navigate_bsc (TYPE_3__*,TYPE_4__*,int *) ;

__attribute__((used)) static HRESULT navigate_hlink(DocHost *This, IMoniker *mon, IBindCtx *bindctx,
                              IBindStatusCallback *callback)
{
    IHttpNegotiate *http_negotiate;
    BindStatusCallback *bsc;
    PBYTE post_data = ((void*)0);
    ULONG post_data_len = 0;
    LPWSTR headers = ((void*)0), url;
    BINDINFO bindinfo;
    DWORD bindf = 0;
    HRESULT hres;

    TRACE("\n");

    hres = IMoniker_GetDisplayName(mon, 0, ((void*)0), &url);
    if(FAILED(hres))
        FIXME("GetDisplayName failed: %08x\n", hres);

    hres = IBindStatusCallback_QueryInterface(callback, &IID_IHttpNegotiate,
                                              (void**)&http_negotiate);
    if(SUCCEEDED(hres)) {
        static const WCHAR null_string[] = {0};

        IHttpNegotiate_BeginningTransaction(http_negotiate, null_string, null_string, 0,
                                            &headers);
        IHttpNegotiate_Release(http_negotiate);
    }

    memset(&bindinfo, 0, sizeof(bindinfo));
    bindinfo.cbSize = sizeof(bindinfo);

    hres = IBindStatusCallback_GetBindInfo(callback, &bindf, &bindinfo);
    dump_BINDINFO(&bindinfo);
    if(bindinfo.dwBindVerb == BINDVERB_POST) {
        post_data_len = bindinfo.cbstgmedData;
        if(post_data_len)
            post_data = bindinfo.stgmedData.u.hGlobal;
    }

    if(This->doc_navigate) {
        hres = async_doc_navigate(This, url, headers, post_data, post_data_len, FALSE);
    }else {
        bsc = create_callback(This, url, post_data, post_data_len, headers);
        hres = navigate_bsc(This, bsc, mon);
        IBindStatusCallback_Release(&bsc->IBindStatusCallback_iface);
    }

    CoTaskMemFree(url);
    CoTaskMemFree(headers);
    ReleaseBindInfo(&bindinfo);

    return hres;
}
