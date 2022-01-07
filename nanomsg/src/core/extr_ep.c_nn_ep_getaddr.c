
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep {char const* addr; } ;



const char *nn_ep_getaddr (struct nn_ep *self)
{
    return self->addr;
}
