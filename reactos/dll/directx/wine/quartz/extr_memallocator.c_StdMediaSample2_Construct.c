
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int cbData; int * pbBuffer; scalar_t__ lActual; scalar_t__ cbBuffer; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {scalar_t__ tMediaEnd; int tMediaStart; TYPE_3__ props; int * pParent; scalar_t__ ref; TYPE_1__ IMediaSample2_iface; } ;
typedef TYPE_2__ StdMediaSample2 ;
typedef scalar_t__ LONG ;
typedef int IMemAllocator ;
typedef int HRESULT ;
typedef int BYTE ;
typedef int AM_SAMPLE2_PROPERTIES ;


 TYPE_2__* CoTaskMemAlloc (int) ;
 int E_OUTOFMEMORY ;
 int INVALID_MEDIA_TIME ;
 int S_OK ;
 int StdMediaSample2_VTable ;
 int ZeroMemory (TYPE_3__*,int) ;
 int assert (int) ;

__attribute__((used)) static HRESULT StdMediaSample2_Construct(BYTE * pbBuffer, LONG cbBuffer, IMemAllocator * pParent, StdMediaSample2 ** ppSample)
{
    assert(pbBuffer && pParent && (cbBuffer > 0));

    if (!(*ppSample = CoTaskMemAlloc(sizeof(StdMediaSample2))))
        return E_OUTOFMEMORY;

    (*ppSample)->IMediaSample2_iface.lpVtbl = &StdMediaSample2_VTable;
    (*ppSample)->ref = 0;
    ZeroMemory(&(*ppSample)->props, sizeof((*ppSample)->props));




    (*ppSample)->pParent = pParent;
    (*ppSample)->props.cbData = sizeof(AM_SAMPLE2_PROPERTIES);
    (*ppSample)->props.cbBuffer = (*ppSample)->props.lActual = cbBuffer;
    (*ppSample)->props.pbBuffer = pbBuffer;
    (*ppSample)->tMediaStart = INVALID_MEDIA_TIME;
    (*ppSample)->tMediaEnd = 0;

    return S_OK;
}
