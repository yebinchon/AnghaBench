
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int QuadPart; } ;
struct chunk_entry {int size; TYPE_1__ offset; } ;
typedef int ULONGLONG ;
struct TYPE_5__ {int QuadPart; } ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;


 int CHUNK_HDR_SIZE ;
 int IStream_Seek (int *,TYPE_2__,int ,int *) ;
 int STREAM_SEEK_SET ;

HRESULT stream_skip_chunk(IStream *stream, struct chunk_entry *chunk)
{
    LARGE_INTEGER end;

    end.QuadPart = (chunk->offset.QuadPart + CHUNK_HDR_SIZE + chunk->size + 1) & ~(ULONGLONG)1;

    return IStream_Seek(stream, end, STREAM_SEEK_SET, ((void*)0));
}
