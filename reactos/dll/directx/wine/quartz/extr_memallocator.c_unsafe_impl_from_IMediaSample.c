
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
typedef int StdMediaSample2 ;
typedef TYPE_1__ IMediaSample2 ;
typedef int IMediaSample ;


 int StdMediaSample2_VTable ;
 int assert (int) ;
 int * impl_from_IMediaSample2 (TYPE_1__*) ;

__attribute__((used)) static inline StdMediaSample2 *unsafe_impl_from_IMediaSample(IMediaSample * iface)
{
    IMediaSample2 *iface2 = (IMediaSample2 *)iface;

    if (!iface)
        return ((void*)0);
    assert(iface2->lpVtbl == &StdMediaSample2_VTable);
    return impl_from_IMediaSample2(iface2);
}
