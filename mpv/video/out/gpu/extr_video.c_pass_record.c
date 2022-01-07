
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct mp_pass_perf {int dummy; } ;
struct pass_info {TYPE_1__ desc; struct mp_pass_perf perf; } ;
struct gl_video {size_t pass_idx; struct pass_info* pass; } ;


 size_t VO_PASS_PERF_MAX ;
 int bstr0 (char*) ;
 int bstr_xappend (struct gl_video*,TYPE_1__*,int ) ;

__attribute__((used)) static void pass_record(struct gl_video *p, struct mp_pass_perf perf)
{
    if (!p->pass || p->pass_idx == VO_PASS_PERF_MAX)
        return;

    struct pass_info *pass = &p->pass[p->pass_idx];
    pass->perf = perf;

    if (pass->desc.len == 0)
        bstr_xappend(p, &pass->desc, bstr0("(unknown)"));

    p->pass_idx++;
}
