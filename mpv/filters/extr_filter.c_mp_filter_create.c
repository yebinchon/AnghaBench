
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_filter_params {struct mp_filter_info const* parent; struct mp_filter_info const* info; } ;
struct mp_filter_info {int dummy; } ;
typedef struct mp_filter_info const mp_filter ;


 int assert (struct mp_filter_info const*) ;
 struct mp_filter_info const* mp_filter_create_with_params (struct mp_filter_params*) ;

struct mp_filter *mp_filter_create(struct mp_filter *parent,
                                   const struct mp_filter_info *info)
{
    assert(parent);
    assert(info);
    struct mp_filter_params params = {
        .info = info,
        .parent = parent,
    };
    return mp_filter_create_with_params(&params);
}
