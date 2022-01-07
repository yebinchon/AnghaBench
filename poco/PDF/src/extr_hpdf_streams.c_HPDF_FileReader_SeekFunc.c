
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; int attr; } ;
typedef int HPDF_WhenceMode ;
typedef TYPE_1__* HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef int HPDF_INT ;
typedef int HPDF_FILEP ;


 int HPDF_FERROR (int ) ;
 int HPDF_FILE_IO_ERROR ;
 scalar_t__ HPDF_FSEEK (int ,int ,int ) ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;


 int HPDF_SetError (int ,int ,int ) ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;

HPDF_STATUS
HPDF_FileReader_SeekFunc (HPDF_Stream stream,
                           HPDF_INT pos,
                           HPDF_WhenceMode mode)
{
    HPDF_FILEP fp = (HPDF_FILEP)stream->attr;
    HPDF_INT whence;

    HPDF_PTRACE((" HPDF_FileReader_SeekFunc\n"));

    switch (mode) {
        case 129:
            whence = SEEK_CUR;
            break;
        case 128:
            whence = SEEK_END;
            break;
        default:
            whence = SEEK_SET;
    }

    if (HPDF_FSEEK (fp, pos, whence) != 0) {
        return HPDF_SetError (stream->error, HPDF_FILE_IO_ERROR, HPDF_FERROR(fp));
    }

    return HPDF_OK;
}
