
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ndim; scalar_t__* shape; scalar_t__* strides; int format; } ;
typedef TYPE_1__ _buffer_info_t ;
typedef scalar_t__ Py_ssize_t ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static Py_ssize_t
_buffer_info_cmp(_buffer_info_t *a, _buffer_info_t *b)
{
    Py_ssize_t c;
    int k;

    c = strcmp(a->format, b->format);
    if (c != 0) return c;

    c = a->ndim - b->ndim;
    if (c != 0) return c;

    for (k = 0; k < a->ndim; ++k) {
        c = a->shape[k] - b->shape[k];
        if (c != 0) return c;
        c = a->strides[k] - b->strides[k];
        if (c != 0) return c;
    }

    return 0;
}
