
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_user_filter {int last_is_active; int last_in_aformat; struct chain* p; struct mp_filter* wrapper; } ;
struct mp_filter {struct mp_user_filter* priv; } ;
struct chain {int f; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int abort () ;
 int mp_aframe_create () ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (int ,int *) ;
 int talloc_steal (struct mp_user_filter*,int ) ;
 int user_wrapper_filter ;

__attribute__((used)) static struct mp_user_filter *create_wrapper_filter(struct chain *p)
{
    struct mp_filter *f = mp_filter_create(p->f, &user_wrapper_filter);
    if (!f)
        abort();
    struct mp_user_filter *wrapper = f->priv;
    wrapper->wrapper = f;
    wrapper->p = p;
    wrapper->last_in_aformat = talloc_steal(wrapper, mp_aframe_create());
    wrapper->last_is_active = 1;
    mp_filter_add_pin(f, MP_PIN_IN, "in");
    mp_filter_add_pin(f, MP_PIN_OUT, "out");
    return wrapper;
}
