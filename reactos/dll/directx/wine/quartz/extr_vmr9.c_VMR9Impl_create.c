
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CLSID_VideoMixingRenderer9 ;
 int vmr_create (int *,int *,int *) ;

HRESULT VMR9Impl_create(IUnknown *outer_unk, LPVOID *ppv)
{
    return vmr_create(outer_unk, ppv, &CLSID_VideoMixingRenderer9);
}
