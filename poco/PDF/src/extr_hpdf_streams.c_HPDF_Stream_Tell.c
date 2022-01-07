
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* tell_fn ) (TYPE_1__*) ;int error; } ;
typedef TYPE_1__* HPDF_Stream ;
typedef int HPDF_INT32 ;


 scalar_t__ HPDF_Error_GetCode (int ) ;
 int HPDF_INVALID_OPERATION ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 int HPDF_THIS_FUNC_WAS_SKIPPED ;
 int stub1 (TYPE_1__*) ;

HPDF_INT32
HPDF_Stream_Tell (HPDF_Stream stream)
{
    HPDF_PTRACE((" HPDF_Stream_Tell\n"));

    if (!(stream->tell_fn))
        return HPDF_SetError (stream->error, HPDF_INVALID_OPERATION, 0);

    if (HPDF_Error_GetCode(stream->error) != 0)
        return HPDF_THIS_FUNC_WAS_SKIPPED;

    return stream->tell_fn(stream);
}
