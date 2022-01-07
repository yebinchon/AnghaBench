
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t p; size_t size; char* buf; int str; } ;
typedef TYPE_1__ stream_t ;
typedef int strbuf_t ;
typedef size_t ULONG ;
typedef int BOOL ;


 int FALSE ;
 int IStream_Read (int ,char*,int,size_t*) ;
 int TRUE ;
 int strbuf_append (int *,char*,size_t) ;

__attribute__((used)) static BOOL stream_chr(stream_t *stream, strbuf_t *buf, char c)
{
    BOOL b = TRUE;
    ULONG i;

    while(b) {
        for(i=stream->p; i<stream->size; i++) {
            if(stream->buf[i] == c) {
                b = FALSE;
                break;
            }
        }

        if(buf && i > stream->p)
            strbuf_append(buf, stream->buf+stream->p, i-stream->p);
        stream->p = i;

        if(stream->p == stream->size) {
            stream->p = 0;
            IStream_Read(stream->str, stream->buf, sizeof(stream->buf), &stream->size);
            if(!stream->size)
                break;
        }
    }

    return stream->size != 0;
}
