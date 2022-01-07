
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_stream_info {int dummy; } ;
struct mp_filter {TYPE_1__* in; struct mp_stream_info* stream_info; } ;
struct TYPE_2__ {struct mp_filter* parent; } ;



struct mp_stream_info *mp_filter_find_stream_info(struct mp_filter *f)
{
    while (f) {
        if (f->stream_info)
            return f->stream_info;
        f = f->in->parent;
    }
    return ((void*)0);
}
