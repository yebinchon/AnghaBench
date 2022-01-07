
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;
typedef enum wined3d_gl_vendor { ____Placeholder_wined3d_gl_vendor } wined3d_gl_vendor ;


 size_t APPLE_FENCE ;
 size_t APPLE_YCBCR_422 ;
 int FIXME (char*,int ) ;
 int GL_VENDOR_APPLE ;
 int GL_VENDOR_FGLRX ;
 int GL_VENDOR_MESA ;
 int GL_VENDOR_NVIDIA ;
 int GL_VENDOR_UNKNOWN ;
 int debugstr_a (char const*) ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static enum wined3d_gl_vendor wined3d_guess_gl_vendor(const struct wined3d_gl_info *gl_info,
        const char *gl_vendor_string, const char *gl_renderer, const char *gl_version)
{
    if (gl_info->supported[APPLE_FENCE] && gl_info->supported[APPLE_YCBCR_422])
        return GL_VENDOR_APPLE;

    if (strstr(gl_vendor_string, "NVIDIA"))
        return GL_VENDOR_NVIDIA;

    if (strstr(gl_vendor_string, "ATI"))
        return GL_VENDOR_FGLRX;

    if (strstr(gl_vendor_string, "Mesa")
            || strstr(gl_vendor_string, "Brian Paul")
            || strstr(gl_vendor_string, "X.Org")
            || strstr(gl_vendor_string, "Advanced Micro Devices, Inc.")
            || strstr(gl_vendor_string, "DRI R300 Project")
            || strstr(gl_vendor_string, "Tungsten Graphics, Inc")
            || strstr(gl_vendor_string, "VMware, Inc.")
            || strstr(gl_vendor_string, "Intel")
            || strstr(gl_renderer, "Mesa")
            || strstr(gl_renderer, "Gallium")
            || strstr(gl_renderer, "Intel")
            || strstr(gl_version, "Mesa"))
        return GL_VENDOR_MESA;

    FIXME("Received unrecognized GL_VENDOR %s. Returning GL_VENDOR_UNKNOWN.\n",
            debugstr_a(gl_vendor_string));

    return GL_VENDOR_UNKNOWN;
}
