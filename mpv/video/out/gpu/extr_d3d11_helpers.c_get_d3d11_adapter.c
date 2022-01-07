
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct bstr {scalar_t__ len; } ;
struct TYPE_3__ {int VendorId; int Description; int member_0; } ;
typedef int IDXGIFactory1 ;
typedef int IDXGIAdapter1 ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ DXGI_ADAPTER_DESC1 ;


 scalar_t__ DXGI_ERROR_NOT_FOUND ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IDXGIAdapter1_GetDesc1 (int *,TYPE_1__*) ;
 scalar_t__ IDXGIFactory1_EnumAdapters1 (int *,unsigned int,int **) ;
 int IID_IDXGIFactory1 ;
 int SAFE_RELEASE (int *) ;
 scalar_t__ S_OK ;
 int bstr0 (char*) ;
 scalar_t__ bstr_case_startswith (int ,struct bstr) ;
 int bstr_xappend_asprintf (int *,struct bstr*,char*,unsigned int,int ,char*) ;
 unsigned int mp_HRESULT_to_str (scalar_t__) ;
 int mp_fatal (struct mp_log*,char*,unsigned int) ;
 char* mp_to_utf8 (int *,int ) ;
 scalar_t__ pCreateDXGIFactory1 (int *,void**) ;
 int talloc_free (char*) ;

__attribute__((used)) static IDXGIAdapter1 *get_d3d11_adapter(struct mp_log *log,
                                        struct bstr requested_adapter_name,
                                        struct bstr *listing)
{
    HRESULT hr = S_OK;
    IDXGIFactory1 *factory;
    IDXGIAdapter1 *picked_adapter = ((void*)0);

    hr = pCreateDXGIFactory1(&IID_IDXGIFactory1, (void **)&factory);
    if (FAILED(hr)) {
        mp_fatal(log, "Failed to create a DXGI factory: %s\n",
                 mp_HRESULT_to_str(hr));
        return ((void*)0);
    }

    for (unsigned int adapter_num = 0; hr != DXGI_ERROR_NOT_FOUND; adapter_num++)
    {
        IDXGIAdapter1 *adapter = ((void*)0);
        DXGI_ADAPTER_DESC1 desc = { 0 };
        char *adapter_description = ((void*)0);

        hr = IDXGIFactory1_EnumAdapters1(factory, adapter_num, &adapter);
        if (FAILED(hr)) {
            if (hr != DXGI_ERROR_NOT_FOUND) {
                mp_fatal(log, "Failed to enumerate at adapter %u\n",
                         adapter_num);
            }
            continue;
        }

        if (FAILED(IDXGIAdapter1_GetDesc1(adapter, &desc))) {
            mp_fatal(log, "Failed to get adapter description when listing at adapter %u\n",
                     adapter_num);
            continue;
        }

        adapter_description = mp_to_utf8(((void*)0), desc.Description);

        if (listing) {
            bstr_xappend_asprintf(((void*)0), listing,
                                  "Adapter %u: vendor: %u, description: %s\n",
                                  adapter_num, desc.VendorId,
                                  adapter_description);
        }

        if (requested_adapter_name.len &&
            bstr_case_startswith(bstr0(adapter_description),
                                 requested_adapter_name))
        {
            picked_adapter = adapter;
        }

        talloc_free(adapter_description);

        if (picked_adapter) {
            break;
        }

        SAFE_RELEASE(adapter);
    }

    SAFE_RELEASE(factory);

    return picked_adapter;
}
