
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IStream ;
typedef int HRESULT ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int IStream_Read (int *,void*,int ,int *) ;
 int S_OK ;
 int TRACE (char*,int ,...) ;

__attribute__((used)) static HRESULT read_from_stream(IStream *stream, void *data, ULONG size)
{
    ULONG bytes_read;
    HRESULT hr;

    hr = IStream_Read(stream, data, size, &bytes_read);
    if(FAILED(hr)){
        TRACE("IStream_Read failed: %08x\n", hr);
        return hr;
    }
    if (bytes_read < size) {
        TRACE("Didn't read full chunk: %u < %u\n", bytes_read, size);
        return E_FAIL;
    }

    return S_OK;
}
