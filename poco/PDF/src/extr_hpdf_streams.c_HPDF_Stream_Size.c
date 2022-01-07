
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* size_fn ) (TYPE_1__*) ;int error; int size; scalar_t__ write_fn; } ;
typedef int HPDF_UINT32 ;
typedef TYPE_1__* HPDF_Stream ;


 scalar_t__ HPDF_Error_GetCode (int ) ;
 int HPDF_INVALID_OPERATION ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 int stub1 (TYPE_1__*) ;

HPDF_UINT32
HPDF_Stream_Size (HPDF_Stream stream)
{
    HPDF_PTRACE((" HPDF_Stream_Tell\n"));

    if (stream->write_fn)
        return stream->size;

    if (!(stream->size_fn)) {
        HPDF_SetError (stream->error, HPDF_INVALID_OPERATION, 0);
        return 0;
    }

    if (HPDF_Error_GetCode(stream->error) != 0)
        return 0;

    return stream->size_fn(stream);
}
