
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subtype; int majortype; } ;
typedef int LPVOID ;
typedef int HRESULT ;
typedef TYPE_1__ AM_MEDIA_TYPE ;


 int FIXME (char*) ;
 scalar_t__ IsEqualIID (int *,int *) ;
 int MEDIASUBTYPE_AIFF ;
 int MEDIASUBTYPE_AU ;
 int MEDIASUBTYPE_WAVE ;
 int MEDIATYPE_Stream ;
 int S_FALSE ;
 int S_OK ;

__attribute__((used)) static HRESULT WAVEParser_QueryAccept(LPVOID iface, const AM_MEDIA_TYPE * pmt)
{
    if (!IsEqualIID(&pmt->majortype, &MEDIATYPE_Stream))
 return S_FALSE;
    if (IsEqualIID(&pmt->subtype, &MEDIASUBTYPE_WAVE))
        return S_OK;
    if (IsEqualIID(&pmt->subtype, &MEDIASUBTYPE_AU) || IsEqualIID(&pmt->subtype, &MEDIASUBTYPE_AIFF))
 FIXME("AU and AIFF files not supported yet!\n");
    return S_FALSE;
}
