
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;
typedef int BOOL ;


 size_t ARB_DEBUG_OUTPUT ;
 scalar_t__ ERR_ON (int ) ;
 scalar_t__ FIXME_ON (int ) ;
 scalar_t__ WARN_ON (int ) ;
 int d3d ;
 int d3d_perf ;

__attribute__((used)) static BOOL context_debug_output_enabled(const struct wined3d_gl_info *gl_info)
{
    return gl_info->supported[ARB_DEBUG_OUTPUT]
            && (ERR_ON(d3d) || FIXME_ON(d3d) || WARN_ON(d3d_perf));
}
