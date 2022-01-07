
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int meta; } ;
struct TYPE_6__ {scalar_t__ c_metadata; } ;
typedef TYPE_1__ PyArray_Descr ;
typedef int PyArray_DatetimeMetaData ;
typedef TYPE_2__ PyArray_DatetimeDTypeMetaData ;


 int NPY_TIMEDELTA ;
 TYPE_1__* PyArray_DescrNewFromType (int ) ;

__attribute__((used)) static PyArray_Descr *
timedelta_dtype_with_copied_meta(PyArray_Descr *dtype)
{
    PyArray_Descr *ret;
    PyArray_DatetimeMetaData *dst, *src;
    PyArray_DatetimeDTypeMetaData *dst_dtmd, *src_dtmd;

    ret = PyArray_DescrNewFromType(NPY_TIMEDELTA);
    if (ret == ((void*)0)) {
        return ((void*)0);
    }

    src_dtmd = ((PyArray_DatetimeDTypeMetaData *)dtype->c_metadata);
    dst_dtmd = ((PyArray_DatetimeDTypeMetaData *)ret->c_metadata);
    src = &(src_dtmd->meta);
    dst = &(dst_dtmd->meta);

    *dst = *src;

    return ret;
}
