
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPKSPROPERTYSET ;
typedef int IKsBufferPropertySetImpl ;
typedef int HRESULT ;


 scalar_t__ IKsBufferPropertySetImpl_Release (int ) ;
 int S_OK ;
 int TRACE (char*,int *) ;

HRESULT IKsBufferPropertySetImpl_Destroy(
    IKsBufferPropertySetImpl *piks)
{
    TRACE("(%p)\n",piks);

    while (IKsBufferPropertySetImpl_Release((LPKSPROPERTYSET)piks) > 0);

    return S_OK;
}
