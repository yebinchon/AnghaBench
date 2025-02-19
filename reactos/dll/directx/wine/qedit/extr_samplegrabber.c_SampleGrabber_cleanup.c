
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pbFormat; } ;
struct TYPE_9__ {scalar_t__ pGraph; } ;
struct TYPE_10__ {TYPE_2__ filterInfo; } ;
struct TYPE_11__ {scalar_t__ seekthru_unk; int bufferData; TYPE_1__ mtype; scalar_t__ grabberIface; scalar_t__ memOutput; scalar_t__ allocator; TYPE_3__ filter; } ;
typedef TYPE_4__ SG_Impl ;


 int CoTaskMemFree (int ) ;
 int IMemAllocator_Release (scalar_t__) ;
 int IMemInputPin_Release (scalar_t__) ;
 int ISampleGrabberCB_Release (scalar_t__) ;
 int IUnknown_Release (scalar_t__) ;
 int TRACE (char*,TYPE_4__*) ;
 int WARN (char*,TYPE_4__*,scalar_t__) ;

__attribute__((used)) static void SampleGrabber_cleanup(SG_Impl *This)
{
    TRACE("(%p)\n", This);
    if (This->filter.filterInfo.pGraph)
        WARN("(%p) still joined to filter graph %p\n", This, This->filter.filterInfo.pGraph);
    if (This->allocator)
        IMemAllocator_Release(This->allocator);
    if (This->memOutput)
        IMemInputPin_Release(This->memOutput);
    if (This->grabberIface)
        ISampleGrabberCB_Release(This->grabberIface);
    CoTaskMemFree(This->mtype.pbFormat);
    CoTaskMemFree(This->bufferData);
    if(This->seekthru_unk)
        IUnknown_Release(This->seekthru_unk);
}
