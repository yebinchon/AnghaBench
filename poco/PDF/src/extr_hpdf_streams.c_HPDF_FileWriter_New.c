
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int error; } ;
struct TYPE_7__ {int type; scalar_t__ attr; int tell_fn; int free_fn; int write_fn; TYPE_2__* mmgr; int error; int sig_bytes; } ;
typedef int HPDF_Stream_Rec ;
typedef TYPE_1__* HPDF_Stream ;
typedef TYPE_2__* HPDF_MMgr ;
typedef scalar_t__ HPDF_FILEP ;


 int GetLastError () ;
 int HPDF_FILE_OPEN_ERROR ;
 scalar_t__ HPDF_FOPEN (char const*,char*) ;
 int HPDF_FileStream_FreeFunc ;
 int HPDF_FileStream_TellFunc ;
 int HPDF_FileWriter_WriteFunc ;
 scalar_t__ HPDF_GetMem (TYPE_2__*,int) ;
 int HPDF_MemSet (TYPE_1__*,int ,int) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_STREAM_FILE ;
 int HPDF_STREAM_SIG_BYTES ;
 int HPDF_SetError (int ,int ,int ) ;
 int errno ;

HPDF_Stream
HPDF_FileWriter_New (HPDF_MMgr mmgr,
                      const char *fname)
{
    HPDF_Stream stream;
    HPDF_FILEP fp = HPDF_FOPEN (fname, "wb");

    HPDF_PTRACE((" HPDF_FileWriter_New\n"));

    if (!fp) {



        HPDF_SetError (mmgr->error, HPDF_FILE_OPEN_ERROR, errno);

        return ((void*)0);
    }

    stream = (HPDF_Stream)HPDF_GetMem (mmgr, sizeof(HPDF_Stream_Rec));

    if (stream) {
        HPDF_MemSet (stream, 0, sizeof(HPDF_Stream_Rec));
        stream->sig_bytes = HPDF_STREAM_SIG_BYTES;
        stream->error = mmgr->error;
        stream->mmgr = mmgr;
        stream->write_fn = HPDF_FileWriter_WriteFunc;
        stream->free_fn = HPDF_FileStream_FreeFunc;
        stream->tell_fn = HPDF_FileStream_TellFunc;
        stream->attr = fp;
        stream->type = HPDF_STREAM_FILE;
    }

    return stream;
}
