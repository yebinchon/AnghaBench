
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;


 scalar_t__ needs_legacy_glsl_syntax (struct wined3d_gl_info const*) ;

__attribute__((used)) static const char *get_attribute_keyword(const struct wined3d_gl_info *gl_info)
{
    return needs_legacy_glsl_syntax(gl_info) ? "attribute" : "in";
}
