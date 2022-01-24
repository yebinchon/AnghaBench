#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct bstr {scalar_t__ len; } ;
struct TYPE_3__ {int /*<<< orphan*/  VendorId; int /*<<< orphan*/  Description; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  IDXGIFactory1 ;
typedef  int /*<<< orphan*/  IDXGIAdapter1 ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ DXGI_ADAPTER_DESC1 ;

/* Variables and functions */
 scalar_t__ DXGI_ERROR_NOT_FOUND ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IDXGIFactory1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct bstr) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct bstr*,char*,unsigned int,int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_log*,char*,unsigned int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static IDXGIAdapter1 *FUNC12(struct mp_log *log,
                                        struct bstr requested_adapter_name,
                                        struct bstr *listing)
{
    HRESULT hr = S_OK;
    IDXGIFactory1 *factory;
    IDXGIAdapter1 *picked_adapter = NULL;

    hr = FUNC10(&IID_IDXGIFactory1, (void **)&factory);
    if (FUNC0(hr)) {
        FUNC8(log, "Failed to create a DXGI factory: %s\n",
                 FUNC7(hr));
        return NULL;
    }

    for (unsigned int adapter_num = 0; hr != DXGI_ERROR_NOT_FOUND; adapter_num++)
    {
        IDXGIAdapter1 *adapter = NULL;
        DXGI_ADAPTER_DESC1 desc = { 0 };
        char *adapter_description = NULL;

        hr = FUNC2(factory, adapter_num, &adapter);
        if (FUNC0(hr)) {
            if (hr != DXGI_ERROR_NOT_FOUND) {
                FUNC8(log, "Failed to enumerate at adapter %u\n",
                         adapter_num);
            }
            continue;
        }

        if (FUNC0(FUNC1(adapter, &desc))) {
            FUNC8(log, "Failed to get adapter description when listing at adapter %u\n",
                     adapter_num);
            continue;
        }

        adapter_description = FUNC9(NULL, desc.Description);

        if (listing) {
            FUNC6(NULL, listing,
                                  "Adapter %u: vendor: %u, description: %s\n",
                                  adapter_num, desc.VendorId,
                                  adapter_description);
        }

        if (requested_adapter_name.len &&
            FUNC5(FUNC4(adapter_description),
                                 requested_adapter_name))
        {
            picked_adapter = adapter;
        }

        FUNC11(adapter_description);

        if (picked_adapter) {
            break;
        }

        FUNC3(adapter);
    }

    FUNC3(factory);

    return picked_adapter;
}