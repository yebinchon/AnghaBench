
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* seek_fn ) (TYPE_1__*,int ,int ) ;int error; } ;
typedef int HPDF_WhenceMode ;
typedef TYPE_1__* HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef int HPDF_INT ;


 scalar_t__ HPDF_Error_GetCode (int ) ;
 int HPDF_INVALID_OPERATION ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 int HPDF_THIS_FUNC_WAS_SKIPPED ;
 int stub1 (TYPE_1__*,int ,int ) ;

HPDF_STATUS
HPDF_Stream_Seek (HPDF_Stream stream,
                   HPDF_INT pos,
                   HPDF_WhenceMode mode)
{
    HPDF_PTRACE((" HPDF_Stream_Seek\n"));

    if (!(stream->seek_fn))
        return HPDF_SetError (stream->error, HPDF_INVALID_OPERATION, 0);

    if (HPDF_Error_GetCode(stream->error) != 0)
        return HPDF_THIS_FUNC_WAS_SKIPPED;

    return stream->seek_fn(stream, pos, mode);
}
