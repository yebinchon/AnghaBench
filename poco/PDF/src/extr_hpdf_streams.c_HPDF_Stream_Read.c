
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* read_fn ) (TYPE_1__*,int *,int *) ;int error; } ;
typedef int HPDF_UINT ;
typedef TYPE_1__* HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef int HPDF_BYTE ;


 int HPDF_INVALID_OPERATION ;
 int HPDF_SetError (int ,int ,int ) ;
 int stub1 (TYPE_1__*,int *,int *) ;

HPDF_STATUS
HPDF_Stream_Read (HPDF_Stream stream,
                   HPDF_BYTE *ptr,
                   HPDF_UINT *size)
{
    if (!(stream->read_fn))
        return HPDF_SetError (stream->error, HPDF_INVALID_OPERATION, 0);






    return stream->read_fn(stream, ptr, size);
}
