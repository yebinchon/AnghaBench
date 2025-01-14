
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ peak; scalar_t__ avg; scalar_t__ last; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct pass_info {TYPE_1__ perf; TYPE_2__ desc; } ;
struct gl_video {struct pass_info* pass; } ;


 int BSTR_P (TYPE_2__) ;
 int MP_TRACE (struct gl_video*,char*,int ,int,int,int) ;
 int VO_PASS_PERF_MAX ;

__attribute__((used)) static void pass_report_performance(struct gl_video *p)
{
    if (!p->pass)
        return;

    for (int i = 0; i < VO_PASS_PERF_MAX; i++) {
        struct pass_info *pass = &p->pass[i];
        if (pass->desc.len) {
            MP_TRACE(p, "pass '%.*s': last %dus avg %dus peak %dus\n",
                     BSTR_P(pass->desc),
                     (int)pass->perf.last/1000,
                     (int)pass->perf.avg/1000,
                     (int)pass->perf.peak/1000);
        }
    }
}
