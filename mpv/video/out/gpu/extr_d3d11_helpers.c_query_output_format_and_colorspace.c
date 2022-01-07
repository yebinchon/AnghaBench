
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_4__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_5__ {int BitsPerColor; int ColorSpace; TYPE_1__ DesktopCoordinates; int DeviceName; int member_0; } ;
typedef int IDXGISwapChain ;
typedef int IDXGIOutput6 ;
typedef int IDXGIOutput ;
typedef int HRESULT ;
typedef TYPE_2__ DXGI_OUTPUT_DESC1 ;
typedef int DXGI_FORMAT ;
typedef int DXGI_COLOR_SPACE_TYPE ;


 int DXGI_FORMAT_R10G10B10A2_UNORM ;
 int DXGI_FORMAT_R8G8B8A8_UNORM ;
 scalar_t__ FAILED (int ) ;
 int IDXGIOutput6_GetDesc1 (int *,TYPE_2__*) ;
 int IDXGIOutput_QueryInterface (int *,int *,void**) ;
 int IDXGISwapChain_GetContainingOutput (int *,int **) ;
 int IID_IDXGIOutput6 ;
 scalar_t__ IsWindows10OrGreater () ;
 int MSGL_ERR ;
 int MSGL_V ;
 int SAFE_RELEASE (int *) ;
 int d3d11_get_csp_name (int ) ;
 int mp_HRESULT_to_str (int ) ;
 int mp_err (struct mp_log*,char*,int ) ;
 int mp_msg (struct mp_log*,int ,char*,int ) ;
 char* mp_to_utf8 (int *,int ) ;
 int mp_verbose (struct mp_log*,char*,char*,scalar_t__,scalar_t__,int,int ,int ) ;
 int talloc_free (char*) ;

__attribute__((used)) static bool query_output_format_and_colorspace(struct mp_log *log,
                                               IDXGISwapChain *swapchain,
                                               DXGI_FORMAT *out_fmt,
                                               DXGI_COLOR_SPACE_TYPE *out_cspace)
{
    IDXGIOutput *output = ((void*)0);
    IDXGIOutput6 *output6 = ((void*)0);
    DXGI_OUTPUT_DESC1 desc = { 0 };
    char *monitor_name = ((void*)0);
    bool success = 0;

    if (!out_fmt || !out_cspace)
        return 0;

    HRESULT hr = IDXGISwapChain_GetContainingOutput(swapchain, &output);
    if (FAILED(hr)) {
        mp_err(log, "Failed to get swap chain's containing output: %s!\n",
               mp_HRESULT_to_str(hr));
        goto done;
    }

    hr = IDXGIOutput_QueryInterface(output, &IID_IDXGIOutput6,
                                    (void**)&output6);
    if (FAILED(hr)) {


        mp_msg(log, IsWindows10OrGreater() ? MSGL_ERR : MSGL_V,
               "Failed to create a DXGI 1.6 output interface: %s\n",
               mp_HRESULT_to_str(hr));
        goto done;
    }

    hr = IDXGIOutput6_GetDesc1(output6, &desc);
    if (FAILED(hr)) {
        mp_err(log, "Failed to query swap chain's output information: %s\n",
               mp_HRESULT_to_str(hr));
        goto done;
    }

    monitor_name = mp_to_utf8(((void*)0), desc.DeviceName);

    mp_verbose(log, "Queried output: %s, %ldx%ld @ %d bits, colorspace: %s (%d)\n",
               monitor_name,
               desc.DesktopCoordinates.right - desc.DesktopCoordinates.left,
               desc.DesktopCoordinates.bottom - desc.DesktopCoordinates.top,
               desc.BitsPerColor,
               d3d11_get_csp_name(desc.ColorSpace),
               desc.ColorSpace);

    *out_cspace = desc.ColorSpace;





    *out_fmt = desc.BitsPerColor > 8 ?
               DXGI_FORMAT_R10G10B10A2_UNORM : DXGI_FORMAT_R8G8B8A8_UNORM;

    success = 1;

done:
    talloc_free(monitor_name);
    SAFE_RELEASE(output6);
    SAFE_RELEASE(output);
    return success;
}
