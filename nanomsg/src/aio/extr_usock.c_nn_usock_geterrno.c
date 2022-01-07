
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_usock {int errnum; } ;



int nn_usock_geterrno (struct nn_usock *self) {
    return self->errnum;
}
