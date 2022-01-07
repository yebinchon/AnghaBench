
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hangul_input_state_get () ;

int
im_get_status()
{
    return hangul_input_state_get();
}
