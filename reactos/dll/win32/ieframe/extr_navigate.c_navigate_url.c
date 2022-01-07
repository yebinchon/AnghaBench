
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int header; int bsc; } ;
typedef TYPE_1__ task_navigate_bsc_t ;
typedef scalar_t__ WCHAR ;
typedef int const VARIANT ;
typedef int ULONG ;
struct TYPE_10__ {int * url; scalar_t__ doc_navigate; int ready_state; } ;
typedef int SAFEARRAY ;
typedef int * PBYTE ;
typedef scalar_t__* LPWSTR ;
typedef scalar_t__* LPCWSTR ;
typedef int LONG ;
typedef int HRESULT ;
typedef TYPE_2__ DocHost ;
typedef int DWORD ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ,int ) ;
 int INTERNET_MAX_URL_LENGTH ;
 scalar_t__ PathIsURLW (scalar_t__*) ;
 int READYSTATE_LOADING ;
 int S_OK ;
 int SafeArrayAccessData (int *,void**) ;
 int SafeArrayGetElemsize (int *) ;
 int SafeArrayGetUBound (int *,int,int*) ;
 int SafeArrayUnaccessData (int *) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int URL_APPLY_DEFAULT ;
 int URL_APPLY_GUESSFILE ;
 int URL_APPLY_GUESSSCHEME ;
 int UrlApplySchemeW (scalar_t__*,scalar_t__*,int *,int) ;
 int VT_ARRAY ;
 int VT_BSTR ;
 int VT_EMPTY ;
 int VT_ERROR ;
 int * V_ARRAY (int const*) ;
 int ** V_ARRAYREF (int const*) ;
 scalar_t__* V_BSTR (int const*) ;
 scalar_t__ V_ISBYREF (int const*) ;
 int V_VT (int const*) ;
 int WARN (char*,int ) ;
 int async_doc_navigate (TYPE_2__*,scalar_t__*,scalar_t__*,int *,int,int ) ;
 int create_callback (TYPE_2__*,scalar_t__*,int *,int,scalar_t__*) ;
 int debugstr_variant (int const*) ;
 int debugstr_w (scalar_t__*) ;
 TYPE_1__* heap_alloc (int) ;
 int navigate_bsc_proc ;
 int navigate_bsc_task_destr ;
 int push_dochost_task (TYPE_2__*,int *,int ,int ,int ) ;
 int set_doc_state (TYPE_2__*,int ) ;

HRESULT navigate_url(DocHost *This, LPCWSTR url, const VARIANT *Flags,
                     const VARIANT *TargetFrameName, VARIANT *PostData, VARIANT *Headers)
{
    SAFEARRAY *post_array = ((void*)0);
    PBYTE post_data = ((void*)0);
    ULONG post_data_len = 0;
    LPWSTR headers = ((void*)0);
    HRESULT hres = S_OK;

    TRACE("navigating to %s\n", debugstr_w(url));

    if((Flags && V_VT(Flags) != VT_EMPTY && V_VT(Flags) != VT_ERROR)
       || (TargetFrameName && V_VT(TargetFrameName) != VT_EMPTY && V_VT(TargetFrameName) != VT_ERROR))
        FIXME("Unsupported args (Flags %s; TargetFrameName %s)\n", debugstr_variant(Flags), debugstr_variant(TargetFrameName));

    if(PostData) {
        if(V_VT(PostData) & VT_ARRAY)
            post_array = V_ISBYREF(PostData) ? *V_ARRAYREF(PostData) : V_ARRAY(PostData);
        else
            WARN("Invalid post data %s\n", debugstr_variant(PostData));
    }

    if(post_array) {
        LONG elem_max;
        SafeArrayAccessData(post_array, (void**)&post_data);
        SafeArrayGetUBound(post_array, 1, &elem_max);
        post_data_len = (elem_max+1) * SafeArrayGetElemsize(post_array);
    }

    if(Headers && V_VT(Headers) == VT_BSTR) {
        headers = V_BSTR(Headers);
        TRACE("Headers: %s\n", debugstr_w(headers));
    }

    set_doc_state(This, READYSTATE_LOADING);
    This->ready_state = READYSTATE_LOADING;

    if(This->doc_navigate) {
        WCHAR new_url[INTERNET_MAX_URL_LENGTH];

        if(PathIsURLW(url)) {
            new_url[0] = 0;
        }else {
            DWORD size;

            size = ARRAY_SIZE(new_url);
            hres = UrlApplySchemeW(url, new_url, &size,
                    URL_APPLY_GUESSSCHEME | URL_APPLY_GUESSFILE | URL_APPLY_DEFAULT);
            if(FAILED(hres)) {
                WARN("UrlApplyScheme failed: %08x\n", hres);
                new_url[0] = 0;
            }
        }

        hres = async_doc_navigate(This, *new_url ? new_url : url, headers, post_data,
                post_data_len, TRUE);
    }else {
        task_navigate_bsc_t *task;

        task = heap_alloc(sizeof(*task));
        task->bsc = create_callback(This, url, post_data, post_data_len, headers);
        push_dochost_task(This, &task->header, navigate_bsc_proc, navigate_bsc_task_destr, This->url == ((void*)0));
    }

    if(post_data)
        SafeArrayUnaccessData(post_array);

    return hres;
}
