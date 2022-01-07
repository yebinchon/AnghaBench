
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; int attr; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef int HPDF_FILEP ;
typedef int HPDF_BYTE ;


 scalar_t__ HPDF_FEOF (int ) ;
 int HPDF_FERROR (int ) ;
 int HPDF_FILE_IO_ERROR ;
 scalar_t__ HPDF_FREAD (int *,int,scalar_t__,int ) ;
 int HPDF_MemSet (int *,int ,scalar_t__) ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_STREAM_EOF ;
 int HPDF_SetError (int ,int ,int ) ;

HPDF_STATUS
HPDF_FileReader_ReadFunc (HPDF_Stream stream,
                          HPDF_BYTE *ptr,
                          HPDF_UINT *siz)
{
    HPDF_FILEP fp = (HPDF_FILEP)stream->attr;
    HPDF_UINT rsiz;

    HPDF_PTRACE((" HPDF_FileReader_ReadFunc\n"));

    HPDF_MemSet(ptr, 0, *siz);
    rsiz = HPDF_FREAD(ptr, 1, *siz, fp);

    if (rsiz != *siz) {
        if (HPDF_FEOF(fp)) {

            *siz = rsiz;

            return HPDF_STREAM_EOF;
        }

        return HPDF_SetError (stream->error, HPDF_FILE_IO_ERROR, HPDF_FERROR(fp));
    }

    return HPDF_OK;
}
