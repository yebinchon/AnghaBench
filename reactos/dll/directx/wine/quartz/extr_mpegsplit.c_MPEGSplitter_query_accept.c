
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subtype; int majortype; } ;
typedef int LPVOID ;
typedef int HRESULT ;
typedef TYPE_1__ AM_MEDIA_TYPE ;


 int FIXME (char*,...) ;
 scalar_t__ IsEqualIID (int *,int *) ;
 int MEDIASUBTYPE_MPEG1Audio ;
 int MEDIASUBTYPE_MPEG1System ;
 int MEDIASUBTYPE_MPEG1Video ;
 int MEDIASUBTYPE_MPEG1VideoCD ;
 int MEDIATYPE_Stream ;
 int S_FALSE ;
 int S_OK ;
 int debugstr_guid (int *) ;

__attribute__((used)) static HRESULT MPEGSplitter_query_accept(LPVOID iface, const AM_MEDIA_TYPE *pmt)
{
    if (!IsEqualIID(&pmt->majortype, &MEDIATYPE_Stream))
        return S_FALSE;

    if (IsEqualIID(&pmt->subtype, &MEDIASUBTYPE_MPEG1Audio))
        return S_OK;

    if (IsEqualIID(&pmt->subtype, &MEDIASUBTYPE_MPEG1Video))
        FIXME("MPEG-1 video streams not yet supported.\n");
    else if (IsEqualIID(&pmt->subtype, &MEDIASUBTYPE_MPEG1System))
        FIXME("MPEG-1 system streams not yet supported.\n");
    else if (IsEqualIID(&pmt->subtype, &MEDIASUBTYPE_MPEG1VideoCD))
        FIXME("MPEG-1 VideoCD streams not yet supported.\n");
    else FIXME("%s\n", debugstr_guid(&pmt->subtype));

    return S_FALSE;
}
