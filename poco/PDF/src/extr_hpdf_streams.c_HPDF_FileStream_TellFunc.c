
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; int attr; } ;
typedef TYPE_1__* HPDF_Stream ;
typedef int HPDF_INT32 ;
typedef int HPDF_FILEP ;


 int HPDF_FERROR (int ) ;
 int HPDF_FILE_IO_ERROR ;
 int HPDF_FTELL (int ) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;

HPDF_INT32
HPDF_FileStream_TellFunc (HPDF_Stream stream)
{
    HPDF_INT32 ret;
    HPDF_FILEP fp = (HPDF_FILEP)stream->attr;

    HPDF_PTRACE((" HPDF_FileReader_TellFunc\n"));

    if ((ret = HPDF_FTELL (fp)) < 0) {
        return HPDF_SetError (stream->error, HPDF_FILE_IO_ERROR,
                HPDF_FERROR(fp));
    }

    return ret;
}
