
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;
typedef int DWORD ;


 int CreateStreamOnHGlobal (int *,int ,int **) ;
 scalar_t__ FAILED (int ) ;
 int IStream_Read (int *,unsigned char*,int,int*) ;
 int IStream_Release (int *) ;
 int IStream_Seek (int *,TYPE_1__,int ,int *) ;
 int IStream_Write (int *,unsigned char*,int,int *) ;
 int STREAM_SEEK_SET ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRUE ;
 int hex_digit (unsigned char) ;

__attribute__((used)) static HRESULT decode_qp(IStream *input, IStream **ret_stream)
{
    const unsigned char *ptr, *end;
    unsigned char *ret, prev = 0;
    unsigned char buf[1024];
    LARGE_INTEGER pos;
    IStream *output;
    DWORD size;
    int n = -1;
    HRESULT hres;

    pos.QuadPart = 0;
    hres = IStream_Seek(input, pos, STREAM_SEEK_SET, ((void*)0));
    if(FAILED(hres))
        return hres;

    hres = CreateStreamOnHGlobal(((void*)0), TRUE, &output);
    if(FAILED(hres))
        return hres;

    while(1) {
        hres = IStream_Read(input, buf, sizeof(buf), &size);
        if(FAILED(hres) || !size)
            break;

        ptr = ret = buf;
        end = buf + size;

        while(ptr < end) {
            unsigned char byte = *ptr++;

            switch(n) {
            case -1:
                if(byte == '=')
                    n = 0;
                else
                    *ret++ = byte;
                continue;
            case 0:
                prev = byte;
                n = 1;
                continue;
            case 1:
                if(prev != '\r' || byte != '\n') {
                    int h1 = hex_digit(prev), h2 = hex_digit(byte);
                    if(h1 != -1 && h2 != -1)
                        *ret++ = (h1 << 4) | h2;
                    else
                        *ret++ = '=';
                }
                n = -1;
                continue;
            }
        }

        if(ret > buf) {
            hres = IStream_Write(output, buf, ret - buf, ((void*)0));
            if(FAILED(hres))
                break;
        }
    }

    if(SUCCEEDED(hres))
        hres = IStream_Seek(output, pos, STREAM_SEEK_SET, ((void*)0));
    if(FAILED(hres)) {
        IStream_Release(output);
        return hres;
    }

    *ret_stream = output;
    return S_OK;
}
