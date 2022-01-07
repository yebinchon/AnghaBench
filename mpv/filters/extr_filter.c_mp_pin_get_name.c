
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_pin {char const* name; } ;



const char *mp_pin_get_name(struct mp_pin *p)
{
    return p->name;
}
