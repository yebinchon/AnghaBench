
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int Clsid; int MimeType; } ;
typedef int PCWSTR ;
typedef TYPE_1__ ImageCodecInfo ;
typedef int HRESULT ;
typedef int CLSID ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ GdipGetImageEncoders (scalar_t__,scalar_t__,TYPE_1__*) ;
 scalar_t__ GdipGetImageEncodersSize (scalar_t__*,scalar_t__*) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ Ok ;
 int S_OK ;
 int _wcsicmp (int ,int ) ;

HRESULT
GdipGetEncoderClsid(PCWSTR MimeType, CLSID *pClsid)
{
    UINT num;
    UINT size;
    UINT i;
    ImageCodecInfo *codecInfo;

    if (GdipGetImageEncodersSize(&num, &size) != Ok ||
        size == 0)
    {
        return E_FAIL;
    }

    codecInfo = HeapAlloc(GetProcessHeap(), 0, size);
    if (!codecInfo)
    {
        return E_OUTOFMEMORY;
    }

    if (GdipGetImageEncoders(num, size, codecInfo) != Ok)
    {
        HeapFree(GetProcessHeap(), 0, codecInfo);
        return E_FAIL;
    }

    for (i = 0; i < num; i++)
    {
        if (!_wcsicmp(codecInfo[i].MimeType, MimeType))
        {
            *pClsid = codecInfo[i].Clsid;
            HeapFree(GetProcessHeap(), 0, codecInfo);
            return S_OK;
        }
    }

    HeapFree(GetProcessHeap(), 0, codecInfo);
    return E_FAIL;
}
