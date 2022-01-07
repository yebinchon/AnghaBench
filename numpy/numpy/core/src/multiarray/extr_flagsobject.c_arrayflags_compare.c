
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ flags; } ;
typedef TYPE_1__ PyArrayFlagsObject ;



__attribute__((used)) static int
arrayflags_compare(PyArrayFlagsObject *self, PyArrayFlagsObject *other)
{
    if (self->flags == other->flags) {
        return 0;
    }
    else if (self->flags < other->flags) {
        return -1;
    }
    else {
        return 1;
    }
}
