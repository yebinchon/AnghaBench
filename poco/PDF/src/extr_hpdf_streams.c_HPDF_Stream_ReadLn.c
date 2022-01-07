
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int error; int read_fn; int seek_fn; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_BYTE ;


 scalar_t__ HPDF_INVALID_OPERATION ;
 scalar_t__ HPDF_INVALID_PARAMETER ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SEEK_CUR ;
 int HPDF_STREAM_BUF_SIZ ;
 scalar_t__ HPDF_STREAM_EOF ;
 scalar_t__ HPDF_STREAM_READLN_CONTINUE ;
 scalar_t__ HPDF_SetError (int ,scalar_t__,int ) ;
 scalar_t__ HPDF_Stream_Read (TYPE_1__*,int *,scalar_t__*) ;
 scalar_t__ HPDF_Stream_Seek (TYPE_1__*,scalar_t__,int ) ;

HPDF_STATUS
HPDF_Stream_ReadLn (HPDF_Stream stream,
                     char *s,
                     HPDF_UINT *size)
{
    char buf[HPDF_STREAM_BUF_SIZ];
    HPDF_UINT r_size = *size;
    HPDF_UINT read_size = HPDF_STREAM_BUF_SIZ;

    HPDF_PTRACE((" HPDF_Stream_ReadLn\n"));

    if (!stream)
        return HPDF_INVALID_PARAMETER;

    if (!s || *size == 0)
        return HPDF_SetError (stream->error, HPDF_INVALID_PARAMETER, 0);

    if (!(stream->seek_fn) || !(stream->read_fn))
        return HPDF_SetError (stream->error, HPDF_INVALID_OPERATION, 0);

    if (r_size < HPDF_STREAM_BUF_SIZ)
        read_size = r_size;

    *size = 0;

    while (r_size > 1) {
        char *pbuf = buf;
        HPDF_STATUS ret = HPDF_Stream_Read (stream, (HPDF_BYTE *)buf, &read_size);

        if (ret != HPDF_OK && read_size == 0)
            return ret;

        r_size -= read_size;

        while (read_size > 0) {
            if (*pbuf == 0x0A || *pbuf == 0x0D) {
                *s = 0;
                read_size--;


                if (*pbuf == 0x0D || read_size > 1) {
                    pbuf++;

                    if (*pbuf == 0x0A)
                        read_size--;
                }

                if (read_size > 0)
                    return HPDF_Stream_Seek (stream, 0 - read_size,
                                HPDF_SEEK_CUR);
                else
                    return HPDF_OK;
            }

            *s++ = *pbuf++;
            read_size--;
            (*size)++;
        }

        if (r_size < HPDF_STREAM_BUF_SIZ)
            read_size = r_size;
        else
            read_size = HPDF_STREAM_BUF_SIZ;

        if (ret == HPDF_STREAM_EOF)
            return HPDF_STREAM_EOF;
    }

    *s = 0;

    return HPDF_STREAM_READLN_CONTINUE;
}
