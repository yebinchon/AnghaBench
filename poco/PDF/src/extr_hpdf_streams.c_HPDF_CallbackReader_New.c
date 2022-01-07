
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int error; } ;
struct TYPE_7__ {int type; void* attr; int size_fn; int tell_fn; int seek_fn; int read_fn; TYPE_2__* mmgr; int error; int sig_bytes; } ;
typedef int HPDF_Stream_Tell_Func ;
typedef int HPDF_Stream_Size_Func ;
typedef int HPDF_Stream_Seek_Func ;
typedef int HPDF_Stream_Rec ;
typedef int HPDF_Stream_Read_Func ;
typedef TYPE_1__* HPDF_Stream ;
typedef TYPE_2__* HPDF_MMgr ;


 scalar_t__ HPDF_GetMem (TYPE_2__*,int) ;
 int HPDF_MemSet (TYPE_1__*,int ,int) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_STREAM_CALLBACK ;
 int HPDF_STREAM_SIG_BYTES ;

HPDF_Stream
HPDF_CallbackReader_New (HPDF_MMgr mmgr,
                          HPDF_Stream_Read_Func read_fn,
                          HPDF_Stream_Seek_Func seek_fn,
                          HPDF_Stream_Tell_Func tell_fn,
                          HPDF_Stream_Size_Func size_fn,
                          void* data)
{
    HPDF_Stream stream;

    HPDF_PTRACE((" HPDF_CallbackReader_New\n"));

    stream = (HPDF_Stream)HPDF_GetMem (mmgr, sizeof(HPDF_Stream_Rec));

    if (stream) {
        HPDF_MemSet (stream, 0, sizeof(HPDF_Stream_Rec));
        stream->sig_bytes = HPDF_STREAM_SIG_BYTES;
        stream->error = mmgr->error;
        stream->mmgr = mmgr;
        stream->read_fn = read_fn;
        stream->seek_fn = seek_fn;
        stream->tell_fn = tell_fn;
        stream->size_fn = size_fn;
        stream->attr = data;
        stream->type = HPDF_STREAM_CALLBACK;
    }

    return stream;
}
