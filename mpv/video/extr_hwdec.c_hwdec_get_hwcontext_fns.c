
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwcontext_fns {int av_hwdevice_type; } ;


 struct hwcontext_fns const** hwcontext_fns ;

const struct hwcontext_fns *hwdec_get_hwcontext_fns(int av_hwdevice_type)
{
    for (int n = 0; hwcontext_fns[n]; n++) {
        if (hwcontext_fns[n]->av_hwdevice_type == av_hwdevice_type)
            return hwcontext_fns[n];
    }
    return ((void*)0);
}
