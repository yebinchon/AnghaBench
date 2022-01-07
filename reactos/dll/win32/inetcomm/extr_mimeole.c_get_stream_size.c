
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULARGE_INTEGER ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
struct TYPE_5__ {int cbSize; int * member_0; } ;
typedef TYPE_1__ STATSTG ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;


 int IStream_Seek (int *,TYPE_2__,int ,int *) ;
 int IStream_Stat (int *,TYPE_1__*,int ) ;
 int STATFLAG_NONAME ;
 int STREAM_SEEK_END ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;

__attribute__((used)) static HRESULT get_stream_size(IStream *stream, ULARGE_INTEGER *size)
{
    STATSTG statstg = {((void*)0)};
    LARGE_INTEGER zero;
    HRESULT hres;

    hres = IStream_Stat(stream, &statstg, STATFLAG_NONAME);
    if(SUCCEEDED(hres)) {
        *size = statstg.cbSize;
        return S_OK;
    }

    zero.QuadPart = 0;
    return IStream_Seek(stream, zero, STREAM_SEEK_END, size);
}
