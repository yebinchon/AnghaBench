
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_pin {int dummy; } ;


 int MP_EOF_FRAME ;
 int mp_pin_out_unread (struct mp_pin*,int ) ;

void mp_pin_out_repeat_eof(struct mp_pin *p)
{
    mp_pin_out_unread(p, MP_EOF_FRAME);
}
