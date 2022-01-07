
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_vertex_caps {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;


 int memset (struct wined3d_vertex_caps*,int ,int) ;

__attribute__((used)) static void vp_none_get_caps(const struct wined3d_gl_info *gl_info, struct wined3d_vertex_caps *caps)
{
    memset(caps, 0, sizeof(*caps));
}
