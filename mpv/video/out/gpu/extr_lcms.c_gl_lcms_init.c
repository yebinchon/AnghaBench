
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
struct mp_icc_opts {int dummy; } ;
struct gl_lcms {int dummy; } ;


 scalar_t__ talloc_new (void*) ;

struct gl_lcms *gl_lcms_init(void *talloc_ctx, struct mp_log *log,
                             struct mpv_global *global,
                             struct mp_icc_opts *opts)
{
    return (struct gl_lcms *) talloc_new(talloc_ctx);
}
