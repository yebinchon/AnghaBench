
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* detail_no; void* error_no; } ;
typedef int HPDF_UINT ;
typedef void* HPDF_STATUS ;
typedef TYPE_1__* HPDF_Error ;


 int HPDF_PTRACE (char*) ;

HPDF_STATUS
HPDF_SetError (HPDF_Error error,
                HPDF_STATUS error_no,
                HPDF_STATUS detail_no)
{
    HPDF_PTRACE((" HPDF_SetError: error_no=0x%04X "
            "detail_no=0x%04X\n", (HPDF_UINT)error_no, (HPDF_UINT)detail_no));

    error->error_no = error_no;
    error->detail_no = detail_no;

    return error_no;
}
