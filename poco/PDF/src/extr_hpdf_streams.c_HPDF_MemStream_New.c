
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int error; } ;
struct TYPE_11__ {int free_fn; int size_fn; int tell_fn; int seek_fn; int read_fn; int write_fn; scalar_t__ buf_siz; scalar_t__ w_pos; struct TYPE_11__* attr; TYPE_3__* mmgr; int error; int type; int sig_bytes; int buf; } ;
typedef scalar_t__ HPDF_UINT ;
typedef int HPDF_Stream_Rec ;
typedef TYPE_1__* HPDF_Stream ;
typedef int HPDF_MemStreamAttr_Rec ;
typedef TYPE_1__* HPDF_MemStreamAttr ;
typedef TYPE_3__* HPDF_MMgr ;


 int HPDF_DEF_ITEMS_PER_BLOCK ;
 int HPDF_FreeMem (TYPE_3__*,TYPE_1__*) ;
 scalar_t__ HPDF_GetMem (TYPE_3__*,int) ;
 int HPDF_List_New (TYPE_3__*,int ) ;
 int HPDF_MemSet (TYPE_1__*,int ,int) ;
 int HPDF_MemStream_FreeFunc ;
 int HPDF_MemStream_ReadFunc ;
 int HPDF_MemStream_SeekFunc ;
 int HPDF_MemStream_SizeFunc ;
 int HPDF_MemStream_TellFunc ;
 int HPDF_MemStream_WriteFunc ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_STREAM_BUF_SIZ ;
 int HPDF_STREAM_MEMORY ;
 int HPDF_STREAM_SIG_BYTES ;

HPDF_Stream
HPDF_MemStream_New (HPDF_MMgr mmgr,
                     HPDF_UINT buf_siz)
{
    HPDF_Stream stream;

    HPDF_PTRACE((" HPDF_MemStream_New\n"));


    stream = (HPDF_Stream)HPDF_GetMem (mmgr, sizeof(HPDF_Stream_Rec));

    if (stream) {

        HPDF_MemStreamAttr attr = (HPDF_MemStreamAttr)HPDF_GetMem (mmgr,
                sizeof(HPDF_MemStreamAttr_Rec));

        if (!attr) {
            HPDF_FreeMem (mmgr, stream);
            return ((void*)0);
        }

        HPDF_MemSet (stream, 0, sizeof(HPDF_Stream_Rec));
        HPDF_MemSet (attr, 0, sizeof(HPDF_MemStreamAttr_Rec));

        attr->buf = HPDF_List_New (mmgr, HPDF_DEF_ITEMS_PER_BLOCK);
        if (!attr->buf) {
            HPDF_FreeMem (mmgr, stream);
            HPDF_FreeMem (mmgr, attr);
            return ((void*)0);
        }

        stream->sig_bytes = HPDF_STREAM_SIG_BYTES;
        stream->type = HPDF_STREAM_MEMORY;
        stream->error = mmgr->error;
        stream->mmgr = mmgr;
        stream->attr = attr;
        attr->buf_siz = (buf_siz > 0) ? buf_siz : HPDF_STREAM_BUF_SIZ;
        attr->w_pos = attr->buf_siz;

        stream->write_fn = HPDF_MemStream_WriteFunc;
        stream->read_fn = HPDF_MemStream_ReadFunc;
        stream->seek_fn = HPDF_MemStream_SeekFunc;
        stream->tell_fn = HPDF_MemStream_TellFunc;
        stream->size_fn = HPDF_MemStream_SizeFunc;
        stream->free_fn = HPDF_MemStream_FreeFunc;
    }

    return stream;
}
