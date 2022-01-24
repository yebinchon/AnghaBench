#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  Height; int /*<<< orphan*/  Width; } ;
struct TYPE_5__ {TYPE_1__ BufferDesc; } ;
typedef  int /*<<< orphan*/  IDXGISwapChain ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ DXGI_SWAP_CHAIN_DESC ;
typedef  int /*<<< orphan*/  DXGI_FORMAT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_log*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct mp_log *log,
                                    IDXGISwapChain *swapchain,
                                    DXGI_FORMAT format)
{
    DXGI_SWAP_CHAIN_DESC desc;

    HRESULT hr = FUNC1(swapchain, &desc);
    if (FUNC0(hr)) {
        FUNC4(log, "Failed to query swap chain's current state: %s\n",
                 FUNC3(hr));
        return false;
    }

    hr = FUNC2(swapchain, 0, desc.BufferDesc.Width,
                                      desc.BufferDesc.Height,
                                      format, 0);
    if (FUNC0(hr)) {
        FUNC4(log, "Couldn't update swapchain format: %s\n",
                 FUNC3(hr));
        return false;
    }

    return true;
}