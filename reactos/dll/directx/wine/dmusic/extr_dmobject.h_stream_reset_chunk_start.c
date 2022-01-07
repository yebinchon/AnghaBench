
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int QuadPart; } ;
struct chunk_entry {TYPE_1__ offset; } ;
struct TYPE_5__ {int QuadPart; } ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;


 int IStream_Seek (int *,TYPE_2__,int ,int *) ;
 int STREAM_SEEK_SET ;

__attribute__((used)) static inline HRESULT stream_reset_chunk_start(IStream *stream, const struct chunk_entry *chunk)
{
    LARGE_INTEGER offset;

    offset.QuadPart = chunk->offset.QuadPart;

    return IStream_Seek(stream, offset, STREAM_SEEK_SET, ((void*)0));
}
