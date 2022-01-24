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
struct wined3d_gl_info {scalar_t__* supported; } ;
typedef  enum wined3d_gl_vendor { ____Placeholder_wined3d_gl_vendor } wined3d_gl_vendor ;

/* Variables and functions */
 size_t APPLE_FENCE ; 
 size_t APPLE_YCBCR_422 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int GL_VENDOR_APPLE ; 
 int GL_VENDOR_FGLRX ; 
 int GL_VENDOR_MESA ; 
 int GL_VENDOR_NVIDIA ; 
 int GL_VENDOR_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static enum wined3d_gl_vendor FUNC3(const struct wined3d_gl_info *gl_info,
        const char *gl_vendor_string, const char *gl_renderer, const char *gl_version)
{
    /* MacOS has various specialities in the extensions it advertises. Some have to be loaded from
     * the opengl 1.2+ core, while other extensions are advertised, but software emulated. So try to
     * detect the Apple OpenGL implementation to apply some extension fixups afterwards.
     *
     * Detecting this isn't really easy. The vendor string doesn't mention Apple. Compile-time checks
     * aren't sufficient either because a Linux binary may display on a macos X server via remote X11.
     * So try to detect the GL implementation by looking at certain Apple extensions. Some extensions
     * like client storage might be supported on other implementations too, but GL_APPLE_flush_render
     * is specific to the Mac OS X window management, and GL_APPLE_ycbcr_422 is QuickTime specific. So
     * the chance that other implementations support them is rather small since Win32 QuickTime uses
     * DirectDraw, not OpenGL. */
    if (gl_info->supported[APPLE_FENCE] && gl_info->supported[APPLE_YCBCR_422])
        return GL_VENDOR_APPLE;

    if (FUNC2(gl_vendor_string, "NVIDIA"))
        return GL_VENDOR_NVIDIA;

    if (FUNC2(gl_vendor_string, "ATI"))
        return GL_VENDOR_FGLRX;

    if (FUNC2(gl_vendor_string, "Mesa")
            || FUNC2(gl_vendor_string, "Brian Paul")
            || FUNC2(gl_vendor_string, "X.Org")
            || FUNC2(gl_vendor_string, "Advanced Micro Devices, Inc.")
            || FUNC2(gl_vendor_string, "DRI R300 Project")
            || FUNC2(gl_vendor_string, "Tungsten Graphics, Inc")
            || FUNC2(gl_vendor_string, "VMware, Inc.")
            || FUNC2(gl_vendor_string, "Intel")
            || FUNC2(gl_renderer, "Mesa")
            || FUNC2(gl_renderer, "Gallium")
            || FUNC2(gl_renderer, "Intel")
            || FUNC2(gl_version, "Mesa"))
        return GL_VENDOR_MESA;

    FUNC0("Received unrecognized GL_VENDOR %s. Returning GL_VENDOR_UNKNOWN.\n",
            FUNC1(gl_vendor_string));

    return GL_VENDOR_UNKNOWN;
}