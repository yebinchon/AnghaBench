
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; scalar_t__ attr; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef scalar_t__ HPDF_FILEP ;
typedef int HPDF_BYTE ;


 int HPDF_FERROR (scalar_t__) ;
 int HPDF_FILE_IO_ERROR ;
 scalar_t__ HPDF_FWRITE (int const*,int,scalar_t__,scalar_t__) ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;

HPDF_STATUS
HPDF_FileWriter_WriteFunc (HPDF_Stream stream,
                            const HPDF_BYTE *ptr,
                            HPDF_UINT siz)
{
    HPDF_FILEP fp;
    HPDF_UINT ret;

    HPDF_PTRACE((" HPDF_FileWriter_WriteFunc\n"));

    fp = (HPDF_FILEP)stream->attr;
    ret = HPDF_FWRITE (ptr, 1, siz, fp);

    if (ret != siz) {
        return HPDF_SetError (stream->error, HPDF_FILE_IO_ERROR, HPDF_FERROR(fp));
    }

    return HPDF_OK;
}
