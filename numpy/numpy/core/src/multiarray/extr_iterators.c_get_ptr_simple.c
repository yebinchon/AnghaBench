
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t npy_intp ;
struct TYPE_3__ {size_t const* strides; int ao; } ;
typedef TYPE_1__ PyArrayIterObject ;


 char* PyArray_DATA (int ) ;
 size_t PyArray_NDIM (int ) ;

__attribute__((used)) static char*
get_ptr_simple(PyArrayIterObject* iter, const npy_intp *coordinates)
{
    npy_intp i;
    char *ret;

    ret = PyArray_DATA(iter->ao);

    for(i = 0; i < PyArray_NDIM(iter->ao); ++i) {
            ret += coordinates[i] * iter->strides[i];
    }

    return ret;
}
