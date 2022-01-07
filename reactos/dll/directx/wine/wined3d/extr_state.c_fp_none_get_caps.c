
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
struct fragment_caps {int dummy; } ;


 int memset (struct fragment_caps*,int ,int) ;

__attribute__((used)) static void fp_none_get_caps(const struct wined3d_gl_info *gl_info, struct fragment_caps *caps)
{
    memset(caps, 0, sizeof(*caps));
}
