
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int VideoRenderer_create (int *,int *) ;

HRESULT VideoRendererDefault_create(IUnknown * pUnkOuter, LPVOID * ppv)
{

    return VideoRenderer_create(pUnkOuter, ppv);
}
