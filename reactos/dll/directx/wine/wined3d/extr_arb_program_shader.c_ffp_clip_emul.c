
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_context {int lowest_disabled_stage; } ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL ffp_clip_emul(const struct wined3d_context *context)
{
    return context->lowest_disabled_stage < 7;
}
