
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_frame {int dummy; } ;
struct mp_pin {struct mp_frame data; } ;


 struct mp_frame MP_NO_FRAME ;
 int mp_pin_out_request_data (struct mp_pin*) ;

struct mp_frame mp_pin_out_read(struct mp_pin *p)
{
    if (!mp_pin_out_request_data(p))
        return MP_NO_FRAME;
    struct mp_frame res = p->data;
    p->data = MP_NO_FRAME;
    return res;
}
