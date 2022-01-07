
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_pin {int dir; } ;
typedef enum mp_pin_dir { ____Placeholder_mp_pin_dir } mp_pin_dir ;



enum mp_pin_dir mp_pin_get_dir(struct mp_pin *p)
{
    return p->dir;
}
