
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_backoff {int n; } ;



void nn_backoff_reset (struct nn_backoff *self)
{
    self->n = 1;
}
