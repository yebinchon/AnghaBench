
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chunk_entry {scalar_t__ size; } ;
typedef scalar_t__ WCHAR ;
typedef scalar_t__ ULONG ;
typedef int IStream ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IStream_Read (int *,scalar_t__*,size_t,scalar_t__*) ;
 int S_FALSE ;
 int S_OK ;
 size_t min (scalar_t__,scalar_t__) ;

HRESULT stream_chunk_get_wstr(IStream *stream, const struct chunk_entry *chunk, WCHAR *str,
        ULONG size)
{
    ULONG len;
    HRESULT hr;

    hr = IStream_Read(stream, str, min(chunk->size, size), &len);
    if (FAILED(hr))
        return hr;


    str[min(len, size - 1)] = 0;

    if (len < chunk->size)
        return S_FALSE;
    return S_OK;
}
