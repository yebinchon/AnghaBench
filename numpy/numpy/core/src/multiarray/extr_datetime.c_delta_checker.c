
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num; int base; } ;
typedef TYPE_1__ PyArray_DatetimeMetaData ;


 int NPY_FR_us ;
 scalar_t__ compute_datetime_metadata_greatest_common_divisor (TYPE_1__*,TYPE_1__*,TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
delta_checker(PyArray_DatetimeMetaData *meta)
{
    PyArray_DatetimeMetaData tmp_meta;

    tmp_meta.base = NPY_FR_us;
    tmp_meta.num = 1;


    if (compute_datetime_metadata_greatest_common_divisor(
            meta, &tmp_meta, meta, 0, 0) < 0) {
        return -1;
    }
    return 0;
}
