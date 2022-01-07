
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; int attr; } ;
typedef int HPDF_UINT32 ;
typedef TYPE_1__* HPDF_Stream ;
typedef int HPDF_INT ;
typedef int HPDF_FILEP ;


 int HPDF_FERROR (int ) ;
 int HPDF_FILE_IO_ERROR ;
 scalar_t__ HPDF_FSEEK (int ,int ,int ) ;
 int HPDF_FTELL (int ) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 int SEEK_END ;
 int SEEK_SET ;

HPDF_UINT32
HPDF_FileStream_SizeFunc (HPDF_Stream stream)
{
    HPDF_INT size;
    HPDF_INT ptr;
    HPDF_FILEP fp = (HPDF_FILEP)stream->attr;

    HPDF_PTRACE((" HPDF_FileReader_SizeFunc\n"));


    if ((ptr = HPDF_FTELL (fp)) < 0) {
        HPDF_SetError (stream->error, HPDF_FILE_IO_ERROR,
                HPDF_FERROR(fp));
        return 0;
    }


    if (HPDF_FSEEK (fp, 0, SEEK_END) < 0) {
        HPDF_SetError (stream->error, HPDF_FILE_IO_ERROR,
                HPDF_FERROR(fp));
        return 0;
    }


    if ((size = HPDF_FTELL (fp)) < 0) {
        HPDF_SetError (stream->error, HPDF_FILE_IO_ERROR,
                HPDF_FERROR(fp));
        return 0;
    }


    if (HPDF_FSEEK (fp, ptr, SEEK_SET) < 0) {
        HPDF_SetError (stream->error, HPDF_FILE_IO_ERROR,
                HPDF_FERROR(fp));
        return 0;
    }

    return (HPDF_UINT32)size;
}
