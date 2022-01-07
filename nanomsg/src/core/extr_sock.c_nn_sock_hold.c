
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sock {int state; int holds; } ;


 int EBADF ;






int nn_sock_hold (struct nn_sock *self)
{
    switch (self->state) {
    case 132:
    case 130:
        self->holds++;
        return 0;
    case 129:
    case 128:
    case 131:
    default:
        return -EBADF;
    }
}
