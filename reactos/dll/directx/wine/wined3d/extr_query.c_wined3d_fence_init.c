
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
struct wined3d_fence {int dummy; } ;
typedef int HRESULT ;


 int WARN (char*) ;
 int WINED3DERR_NOTAVAILABLE ;
 int WINED3D_OK ;
 int wined3d_fence_supported (struct wined3d_gl_info const*) ;

__attribute__((used)) static HRESULT wined3d_fence_init(struct wined3d_fence *fence, const struct wined3d_gl_info *gl_info)
{
    if (!wined3d_fence_supported(gl_info))
    {
        WARN("Fences not supported.\n");
        return WINED3DERR_NOTAVAILABLE;
    }

    return WINED3D_OK;
}
