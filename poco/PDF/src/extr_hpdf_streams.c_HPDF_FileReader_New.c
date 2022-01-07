
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int error; } ;
struct TYPE_7__ {scalar_t__ attr; int free_fn; int size_fn; int tell_fn; int seek_fn; int read_fn; TYPE_2__* mmgr; int error; int type; int sig_bytes; } ;
typedef int HPDF_Stream_Rec ;
typedef TYPE_1__* HPDF_Stream ;
typedef TYPE_2__* HPDF_MMgr ;
typedef scalar_t__ HPDF_FILEP ;


 int GetLastError () ;
 int HPDF_FILE_OPEN_ERROR ;
 scalar_t__ HPDF_FOPEN (char const*,char*) ;
 int HPDF_FileReader_ReadFunc ;
 int HPDF_FileReader_SeekFunc ;
 int HPDF_FileStream_FreeFunc ;
 int HPDF_FileStream_SizeFunc ;
 int HPDF_FileStream_TellFunc ;
 scalar_t__ HPDF_GetMem (TYPE_2__*,int) ;
 int HPDF_MemSet (TYPE_1__*,int ,int) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_STREAM_FILE ;
 int HPDF_STREAM_SIG_BYTES ;
 int HPDF_SetError (int ,int ,int ) ;
 int errno ;

HPDF_Stream
HPDF_FileReader_New (HPDF_MMgr mmgr,
                      const char *fname)
{
    HPDF_Stream stream;
    HPDF_FILEP fp = HPDF_FOPEN (fname, "rb");

    HPDF_PTRACE((" HPDF_FileReader_New\n"));

    if (!fp) {



        HPDF_SetError (mmgr->error, HPDF_FILE_OPEN_ERROR, errno);

        return ((void*)0);
    }

    stream = (HPDF_Stream)HPDF_GetMem(mmgr, sizeof(HPDF_Stream_Rec));

    if (stream) {
        HPDF_MemSet(stream, 0, sizeof(HPDF_Stream_Rec));
        stream->sig_bytes = HPDF_STREAM_SIG_BYTES;
        stream->type = HPDF_STREAM_FILE;
        stream->error = mmgr->error;
        stream->mmgr = mmgr;
        stream->read_fn = HPDF_FileReader_ReadFunc;
        stream->seek_fn = HPDF_FileReader_SeekFunc;
        stream->tell_fn = HPDF_FileStream_TellFunc;
        stream->size_fn = HPDF_FileStream_SizeFunc;
        stream->free_fn = HPDF_FileStream_FreeFunc;
        stream->attr = fp;
    }

    return stream;
}
