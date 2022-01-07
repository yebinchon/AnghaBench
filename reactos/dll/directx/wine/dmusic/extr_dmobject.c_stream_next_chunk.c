
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chunk_entry {scalar_t__ id; } ;
typedef int IStream ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int stream_get_chunk (int *,struct chunk_entry*) ;
 int stream_skip_chunk (int *,struct chunk_entry*) ;

HRESULT stream_next_chunk(IStream *stream, struct chunk_entry *chunk)
{
    HRESULT hr;

    if (chunk->id) {
        hr = stream_skip_chunk(stream, chunk);
        if (FAILED(hr))
            return hr;
    }

    return stream_get_chunk(stream, chunk);
}
