
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_BYTE ;


 scalar_t__ HPDF_Error_GetCode (int ) ;
 scalar_t__ HPDF_MemStream_InWrite (TYPE_1__*,int const**,scalar_t__*) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_THIS_FUNC_WAS_SKIPPED ;

HPDF_STATUS
HPDF_MemStream_WriteFunc (HPDF_Stream stream,
                           const HPDF_BYTE *ptr,
                           HPDF_UINT siz)
{
    HPDF_UINT wsiz = siz;

    HPDF_PTRACE((" HPDF_MemStream_WriteFunc\n"));

    if (HPDF_Error_GetCode (stream->error) != 0)
        return HPDF_THIS_FUNC_WAS_SKIPPED;

    while (wsiz > 0) {
        HPDF_STATUS ret = HPDF_MemStream_InWrite (stream, &ptr, &wsiz);
        if (ret != HPDF_OK)
            return ret;
    }

    return HPDF_OK;
}
