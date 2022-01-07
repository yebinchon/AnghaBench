
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap {int member_0; } ;
struct mp_aframe {int dummy; } ;


 int mp_aframe_get_chmap (struct mp_aframe*,struct mp_chmap*) ;
 scalar_t__ mp_aframe_get_format (struct mp_aframe*) ;
 scalar_t__ mp_aframe_get_rate (struct mp_aframe*) ;
 scalar_t__ mp_chmap_equals (struct mp_chmap*,struct mp_chmap*) ;

__attribute__((used)) static bool is_aformat_ok(struct mp_aframe *a, struct mp_aframe *b)
{
    struct mp_chmap ca = {0}, cb = {0};
    mp_aframe_get_chmap(a, &ca);
    mp_aframe_get_chmap(b, &cb);
    return mp_chmap_equals(&ca, &cb) &&
           mp_aframe_get_rate(a) == mp_aframe_get_rate(b) &&
           mp_aframe_get_format(a) == mp_aframe_get_format(b);
}
