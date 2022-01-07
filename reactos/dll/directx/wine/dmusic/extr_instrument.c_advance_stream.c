
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IStream_Seek (int *,TYPE_1__,int ,int *) ;
 int STREAM_SEEK_CUR ;
 int WARN (char*,int ) ;

__attribute__((used)) static inline HRESULT advance_stream(IStream *stream, ULONG bytes)
{
    LARGE_INTEGER move;
    HRESULT ret;

    move.QuadPart = bytes;

    ret = IStream_Seek(stream, move, STREAM_SEEK_CUR, ((void*)0));
    if (FAILED(ret))
        WARN("IStream_Seek failed: %08x\n", ret);

    return ret;
}
