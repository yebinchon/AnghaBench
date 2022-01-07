
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int dwPageSize; } ;
struct TYPE_12__ {int listentry; } ;
struct TYPE_9__ {int cbAlign; int cbBuffer; int cbPrefix; int cBuffers; } ;
struct TYPE_10__ {int free_list; TYPE_1__ props; } ;
struct TYPE_11__ {TYPE_2__ base; scalar_t__ pMemory; } ;
typedef TYPE_3__ StdMemAllocator ;
typedef TYPE_4__ StdMediaSample2 ;
typedef TYPE_5__ SYSTEM_INFO ;
typedef int LONG ;
typedef int IMemAllocator ;
typedef int HRESULT ;
typedef int BYTE ;


 int E_OUTOFMEMORY ;
 int GetSystemInfo (TYPE_5__*) ;
 int MEM_COMMIT ;
 int PAGE_READWRITE ;
 int S_OK ;
 int StdMediaSample2_Construct (int *,int,int *,TYPE_4__**) ;
 TYPE_3__* StdMemAllocator_from_IMemAllocator (int *) ;
 int VFW_E_BADALIGN ;
 scalar_t__ VirtualAlloc (int *,int,int ,int ) ;
 int assert (int ) ;
 int list_add_head (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static HRESULT StdMemAllocator_Alloc(IMemAllocator * iface)
{
    StdMemAllocator *This = StdMemAllocator_from_IMemAllocator(iface);
    StdMediaSample2 * pSample = ((void*)0);
    SYSTEM_INFO si;
    LONG i;

    assert(list_empty(&This->base.free_list));


    GetSystemInfo(&si);


    if ((si.dwPageSize % This->base.props.cbAlign) != 0)
        return VFW_E_BADALIGN;





    This->pMemory = VirtualAlloc(((void*)0), (This->base.props.cbBuffer + This->base.props.cbPrefix) * This->base.props.cBuffers, MEM_COMMIT, PAGE_READWRITE);

    if (!This->pMemory)
        return E_OUTOFMEMORY;

    for (i = This->base.props.cBuffers - 1; i >= 0; i--)
    {

        BYTE * pbBuffer = (BYTE *)This->pMemory + i * (This->base.props.cbBuffer + This->base.props.cbPrefix) + This->base.props.cbPrefix;

        StdMediaSample2_Construct(pbBuffer, This->base.props.cbBuffer, iface, &pSample);

        list_add_head(&This->base.free_list, &pSample->listentry);
    }

    return S_OK;
}
