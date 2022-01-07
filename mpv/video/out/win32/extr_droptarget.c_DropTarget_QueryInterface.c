
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STDMETHODIMP ;
typedef int REFIID ;
typedef int IDropTarget ;


 int E_NOINTERFACE ;
 int IDropTarget_AddRef (int *) ;
 int IID_IDropTarget ;
 int IID_IUnknown ;
 scalar_t__ IsEqualIID (int ,int *) ;
 int S_OK ;

__attribute__((used)) static STDMETHODIMP DropTarget_QueryInterface(IDropTarget *self, REFIID riid,
                                              void **ppvObject)
{
    if (IsEqualIID(riid, &IID_IUnknown) || IsEqualIID(riid, &IID_IDropTarget)) {
        *ppvObject = self;
        IDropTarget_AddRef(self);
        return S_OK;
    }

    *ppvObject = ((void*)0);
    return E_NOINTERFACE;
}
