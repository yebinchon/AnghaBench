#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum wined3d_pci_vendor { ____Placeholder_wined3d_pci_vendor } wined3d_pci_vendor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int HW_VENDOR_AMD ; 
 int HW_VENDOR_INTEL ; 
 int HW_VENDOR_NVIDIA ; 
 int HW_VENDOR_SOFTWARE ; 
 int HW_VENDOR_VMWARE ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static enum wined3d_pci_vendor FUNC3(const char *gl_vendor_string, const char *gl_renderer)
{
    if (FUNC2(gl_vendor_string, "NVIDIA")
            || FUNC2(gl_vendor_string, "Nouveau")
            || FUNC2(gl_vendor_string, "nouveau"))
        return HW_VENDOR_NVIDIA;

    if (FUNC2(gl_vendor_string, "ATI")
            || FUNC2(gl_vendor_string, "Advanced Micro Devices, Inc.")
            || FUNC2(gl_vendor_string, "X.Org R300 Project")
            || FUNC2(gl_renderer, "AMD")
            || FUNC2(gl_renderer, "FirePro")
            || FUNC2(gl_renderer, "Radeon")
            || FUNC2(gl_renderer, "R100")
            || FUNC2(gl_renderer, "R200")
            || FUNC2(gl_renderer, "R300")
            || FUNC2(gl_renderer, "R600")
            || FUNC2(gl_renderer, "R700"))
        return HW_VENDOR_AMD;

    if (FUNC2(gl_vendor_string, "Intel(R)")
            /* Intel switched from Intel(R) to Intel® recently, so just match Intel. */
            || FUNC2(gl_renderer, "Intel")
            || FUNC2(gl_renderer, "i915")
            || FUNC2(gl_vendor_string, "Intel Inc."))
        return HW_VENDOR_INTEL;

    if (FUNC2(gl_renderer, "SVGA3D"))
        return HW_VENDOR_VMWARE;

    if (FUNC2(gl_vendor_string, "Mesa")
            || FUNC2(gl_vendor_string, "Brian Paul")
            || FUNC2(gl_vendor_string, "Tungsten Graphics, Inc")
            || FUNC2(gl_vendor_string, "VMware, Inc."))
        return HW_VENDOR_SOFTWARE;

    FUNC0("Received unrecognized GL_VENDOR %s. Returning HW_VENDOR_NVIDIA.\n", FUNC1(gl_vendor_string));

    return HW_VENDOR_NVIDIA;
}