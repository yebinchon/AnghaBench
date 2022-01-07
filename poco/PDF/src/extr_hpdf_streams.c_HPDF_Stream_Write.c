
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* write_fn ) (TYPE_1__*,int const*,scalar_t__) ;int size; int error; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_BYTE ;


 int HPDF_INVALID_OPERATION ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_SetError (int ,int ,int ) ;
 scalar_t__ stub1 (TYPE_1__*,int const*,scalar_t__) ;

HPDF_STATUS
HPDF_Stream_Write (HPDF_Stream stream,
                    const HPDF_BYTE *ptr,
                    HPDF_UINT size)
{
    HPDF_STATUS ret;

    HPDF_PTRACE((" HPDF_Stream_Write\n"));

    if (!(stream->write_fn))
        return HPDF_SetError(stream->error, HPDF_INVALID_OPERATION, 0);






    ret = stream->write_fn(stream, ptr, size);

    if (ret != HPDF_OK)
        return ret;

    stream->size += size;

    return HPDF_OK;
}
