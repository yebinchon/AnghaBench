
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user_data; int error_fn; int detail_no; int error_no; } ;
typedef TYPE_1__* HPDF_Error ;



void
HPDF_CopyError (HPDF_Error dst,
                 HPDF_Error src)
{
    dst->error_no = src->error_no;
    dst->detail_no = src->detail_no;
    dst->error_fn = src->error_fn;
    dst->user_data = src->user_data;
}
