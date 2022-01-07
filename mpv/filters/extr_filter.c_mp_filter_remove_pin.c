
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_pin {struct mp_pin* other; struct mp_filter* owner; } ;
struct mp_filter {int num_pins; struct mp_pin** ppins; struct mp_pin** pins; } ;


 int MP_TARRAY_REMOVE_AT (struct mp_pin**,int,int) ;
 int assert (int) ;
 int mp_pin_disconnect (struct mp_pin*) ;
 int talloc_free (struct mp_pin*) ;

void mp_filter_remove_pin(struct mp_filter *f, struct mp_pin *p)
{
    if (!p)
        return;

    assert(p->owner == f);
    mp_pin_disconnect(p);
    mp_pin_disconnect(p->other);

    int index = -1;
    for (int n = 0; n < f->num_pins; n++) {
        if (f->ppins[n] == p) {
            index = n;
            break;
        }
    }
    assert(index >= 0);

    talloc_free(f->pins[index]);
    talloc_free(f->ppins[index]);

    int count = f->num_pins;
    MP_TARRAY_REMOVE_AT(f->pins, count, index);
    count = f->num_pins;
    MP_TARRAY_REMOVE_AT(f->ppins, count, index);
    f->num_pins -= 1;
}
