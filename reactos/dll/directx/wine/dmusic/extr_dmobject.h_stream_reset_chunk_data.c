
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ QuadPart; } ;
struct chunk_entry {scalar_t__ id; TYPE_1__ offset; } ;
struct TYPE_5__ {scalar_t__ QuadPart; } ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;
typedef int FOURCC ;
typedef int DWORD ;


 scalar_t__ FOURCC_LIST ;
 scalar_t__ FOURCC_RIFF ;
 int IStream_Seek (int *,TYPE_2__,int ,int *) ;
 int STREAM_SEEK_SET ;

__attribute__((used)) static inline HRESULT stream_reset_chunk_data(IStream *stream, const struct chunk_entry *chunk)
{
    LARGE_INTEGER offset;

    offset.QuadPart = chunk->offset.QuadPart + sizeof(FOURCC) + sizeof(DWORD);
    if (chunk->id == FOURCC_RIFF || chunk->id == FOURCC_LIST)
        offset.QuadPart += sizeof(FOURCC);

    return IStream_Seek(stream, offset, STREAM_SEEK_SET, ((void*)0));
}
